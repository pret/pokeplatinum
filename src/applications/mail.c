#include "applications/mail.h"

#include <nitro.h>

#include "constants/items.h"
#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "applications/mail_viewer.h"
#include "overlay020/ov20_021D0D80.h"

#include "game_records.h"
#include "heap.h"
#include "item.h"
#include "mail.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "unk_02014A84.h"
#include "unk_0209747C.h"

FS_EXTERN_OVERLAY(overlay20);
FS_EXTERN_OVERLAY(mail_viewer);

typedef struct MailApp {
    enum HeapID heapID;
    u8 padding[4];
    UnkStruct_0209747C *unk_08;
    ApplicationManager *appMan;
    MailViewerAppArgs *viewerArgs;
    Sentence selectedSentence;
} MailApp;

enum MailAppState {
    MAIL_STATE_OPEN_VIEWER = 0,
    MAIL_STATE_VIEWING,
    MAIL_STATE_EXIT,
    MAIL_STATE_EDIT_SENTENCE_START,
    MAIL_STATE_EDITING,
};

static BOOL MailApp_Init(ApplicationManager *appMan, int *state);
static BOOL MailApp_Main(ApplicationManager *appMan, int *state);
static BOOL MailApp_Exit(ApplicationManager *appMan, int *state);

const ApplicationManagerTemplate gMailAppArgsTemplate = {
    MailApp_Init,
    MailApp_Main,
    MailApp_Exit,
    FS_OVERLAY_ID_NONE
};

MailAppArgs *MailAppArgs_New_Write(SaveData *saveData, enum MailContext context, u8 partySlot, u8 mailType, enum HeapID heapID)
{
    Mailbox *mailbox = SaveData_GetMailbox(saveData);
    MailAppArgs *args = Heap_AllocAtEnd(heapID, sizeof(MailAppArgs));

    MI_CpuClear8(args, sizeof(MailAppArgs));

    args->mailType = mailType;
    args->partySlotUnused = partySlot;
    args->mailbox = mailbox;
    args->writeMode = TRUE;
    args->contextUnused = context;
    args->mailboxSlotUnused = 0;
    args->saveData = saveData;
    args->mail = Mail_New(heapID);

    Mail_Reset(args->mail);
    Mail_SetTrainerAndIconData(args->mail, MAIL_TYPE_NONE, partySlot, saveData);

    return args;
}

MailAppArgs *MailAppArgs_New_ReadFromMailbox(SaveData *saveData, enum MailContext context, u16 mailboxSlot, enum HeapID heapID)
{
    MailAppArgs *args = Heap_AllocAtEnd(heapID, sizeof(MailAppArgs));
    MI_CpuClear8(args, sizeof(MailAppArgs));

    args->writeMode = FALSE;
    args->contextUnused = context;
    args->mailboxSlotUnused = mailboxSlot;
    args->saveData = saveData;

    Mailbox *mailbox = SaveData_GetMailbox(saveData);

    args->mailbox = mailbox;
    args->mail = Mailbox_CopyMailAtSlot(mailbox, context, mailboxSlot, heapID);

    return args;
}

MailAppArgs *MailAppArgs_New_ReadHeld(SaveData *saveData, Pokemon *mon, enum HeapID heapID)
{
    MailAppArgs *args = Heap_AllocAtEnd(heapID, sizeof(MailAppArgs));
    MI_CpuClear8(args, sizeof(MailAppArgs));

    args->writeMode = FALSE;
    args->saveData = saveData;
    args->mail = Mail_New(heapID);

    Pokemon_GetValue(mon, MON_DATA_MAIL, args->mail);
    return args;
}

MailAppArgs *MailAppArgs_New_Check(SaveData *saveData, u8 mailType, enum HeapID heapID)
{
    MailAppArgs *args = Heap_AllocAtEnd(heapID, sizeof(MailAppArgs));
    MI_CpuClear8(args, sizeof(MailAppArgs));

    args->writeMode = FALSE;
    args->saveData = saveData;
    args->mail = Mail_New(heapID);

    Mail_SetMailType(args->mail, mailType);
    return args;
}

BOOL MailApp_WasMailWritten(MailAppArgs *args)
{
    return args->mailWritten;
}

BOOL MailApp_CopyWrittenMailToMailboxSlot(MailAppArgs *args, enum MailContext context, u8 slot)
{
    if (!MailApp_WasMailWritten(args)) {
        return FALSE;
    }

    Mailbox_CopyMailToSlot(args->mailbox, context, slot, args->mail);
    return TRUE;
}

BOOL MailApp_AddWrittenMailToMon(MailAppArgs *args, Pokemon *mon)
{
    if (!MailApp_WasMailWritten(args)) {
        return FALSE;
    }

    Pokemon_SetValue(mon, MON_DATA_MAIL, args->mail);
    return TRUE;
}

void MailAppArgs_Free(MailAppArgs *args)
{
    if (args->mail != NULL) {
        Heap_Free(args->mail);
    }

    Heap_Free(args);
}

int Mail_TransferFromMonToMailbox(Mailbox *mailbox, Pokemon *mon, enum HeapID heapID)
{
    int item = ITEM_NONE;
    int slot = Mail_GetEmptyMailSlot(mailbox, MAIL_CONTEXT_MAILBOX);

    if (slot == -1) {
        return -1;
    }

    Mail *mail = Mail_New(heapID);

    Pokemon_GetValue(mon, MON_DATA_MAIL, mail);
    Mailbox_CopyMailToSlot(mailbox, MAIL_CONTEXT_MAILBOX, slot, mail);
    Mail_Reset(mail);
    Pokemon_SetValue(mon, MON_DATA_MAIL, mail);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
    Heap_Free(mail);

    return slot;
}

int Mail_TransferFromMailboxToMon(Mailbox *mailbox, u16 slot, Pokemon *mon, enum HeapID heapID)
{
    int item = ITEM_NONE;
    Mail *mail = Mailbox_CopyMailAtSlot(mailbox, MAIL_CONTEXT_MAILBOX, slot, heapID);

    if (mail == NULL) {
        return -1;
    }

    item = Item_ForMailType(Mail_GetMailType(mail));

    Pokemon_SetValue(mon, MON_DATA_MAIL, mail);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
    Mailbox_ClearMailAtSlot(mailbox, MAIL_CONTEXT_MAILBOX, slot);
    Heap_Free(mail);

    return slot;
}

static MailViewerAppArgs *MailViewerAppArgs_New(Mail *mail, enum HeapID heapID)
{
    MailViewerAppArgs *args = Heap_Alloc(heapID, sizeof(MailViewerAppArgs));
    MI_CpuClear8(args, sizeof(MailViewerAppArgs));

    args->writeMode = FALSE;
    args->trainerID = Mail_GetTrainerID(mail);
    args->trainerName = String_Init(TRAINER_NAME_LEN + 1, heapID);

    String_CopyChars(args->trainerName, Mail_GetTrainerName(mail));

    args->mailType = Mail_GetMailType(mail);
    args->language = Mail_GetLanguage(mail);
    args->gameVersion = Mail_GetGameVersion(mail);

    for (u16 i = 0; i < MAIL_MAX_ICONS; i++) {
        args->iconData[i].asValue = Mail_GetIconData(mail, i, ICON_DATA_VALUE, Mail_GetPlatExclusiveFormIcons(mail));
    }

    for (u16 i = 0; i < MAIL_MAX_SENTENCES; i++) {
        Sentence_Set(&args->sentences[i], Mail_GetSentence(mail, i));
    }

    return args;
}

static void MailViewerAppArgs_Free(MailViewerAppArgs *args)
{
    if (args->trainerName != NULL) {
        String_Free(args->trainerName);
    }

    Heap_Free(args);
}

static void Mail_UpdateFromViewerArgs(Mail *mail, MailViewerAppArgs *args)
{
    for (u16 i = 0; i < MAIL_MAX_SENTENCES; i++) {
        Mail_SetSentence(mail, &args->sentences[i], i);
    }

    Mail_SetMailType(mail, args->mailType);
}

static BOOL MailApp_RunSubApplication(ApplicationManager **appManPtr)
{
    if (*appManPtr && ApplicationManager_Exec(*appManPtr)) {
        ApplicationManager_Free(*appManPtr);
        *appManPtr = NULL;
        return TRUE;
    }

    return FALSE;
}

static BOOL MailApp_Init(ApplicationManager *appMan, int *state)
{
    MailApp *mailApp = NULL;
    MailAppArgs *args = ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MAIL, HEAP_SIZE_MAIL);
    mailApp = ApplicationManager_NewData(appMan, sizeof(MailApp), HEAP_ID_MAIL);
    MI_CpuClear8(mailApp, sizeof(MailApp));

    mailApp->heapID = HEAP_ID_MAIL;
    mailApp->viewerArgs = MailViewerAppArgs_New(args->mail, mailApp->heapID);
    mailApp->viewerArgs->options = SaveData_GetOptions(args->saveData);

    if (args->writeMode == TRUE) {
        mailApp->viewerArgs->mailType = args->mailType;
    }

    if (mailApp->viewerArgs->mailType >= NUM_MAIL_TYPES) {
        mailApp->viewerArgs->mailType = 0;
    }

    mailApp->viewerArgs->writeMode = args->writeMode;

    return TRUE;
}

static BOOL MailApp_Main(ApplicationManager *appMan, int *state)
{
    MailApp *mailApp = ApplicationManager_Data(appMan);
    MailAppArgs *args = ApplicationManager_Args(appMan);

    FS_EXTERN_OVERLAY(mail_viewer);
    FS_EXTERN_OVERLAY(overlay20);

    static const ApplicationManagerTemplate mailViewerTemplate = {
        MailViewer_Init,
        MailViewer_Main,
        MailViewer_Exit,
        FS_OVERLAY_ID(mail_viewer),
    };
    static const ApplicationManagerTemplate v3 = {
        ov20_021D0D80,
        ov20_021D0DF8,
        ov20_021D0EA8,
        FS_OVERLAY_ID(overlay20),
    };

    switch (*state) {
    case MAIL_STATE_OPEN_VIEWER:
        mailApp->viewerArgs->writeMode = args->writeMode;
        mailApp->appMan = ApplicationManager_New(&mailViewerTemplate, mailApp->viewerArgs, mailApp->heapID);
        *state = MAIL_STATE_VIEWING;
        break;
    case MAIL_STATE_VIEWING:
        if (!MailApp_RunSubApplication(&mailApp->appMan)) {
            break;
        }

        switch (mailApp->viewerArgs->result) {
        case MAIL_VIEWER_RESULT_CANCEL:
            *state = MAIL_STATE_EXIT;
            break;
        case MAIL_VIEWER_RESULT_CONFIRM:
            *state = MAIL_STATE_EXIT;
            break;
        default:
            *state = MAIL_STATE_EDIT_SENTENCE_START;
            break;
        }

        break;
    case MAIL_STATE_EXIT:
        if (args->writeMode == TRUE) {
            if (mailApp->viewerArgs->result == MAIL_VIEWER_RESULT_CONFIRM) {
                Mail_UpdateFromViewerArgs(args->mail, mailApp->viewerArgs);

                GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(args->saveData), TRAINER_SCORE_EVENT_MAIL_WRITTEN);
                GameRecords_IncrementRecordValue(SaveData_GetGameRecords(args->saveData), RECORD_TIMES_MAIL_WRITTEN);
                args->mailWritten = TRUE;
            } else {
                args->mailWritten = FALSE;
            }
        }

        return TRUE;
    case MAIL_STATE_EDIT_SENTENCE_START:
        mailApp->unk_08 = sub_0209747C(2, 0, args->saveData, mailApp->heapID);

        if (Sentence_IsValid(&mailApp->viewerArgs->sentences[mailApp->viewerArgs->sentenceIndex])) {
            Sentence_Set(&mailApp->selectedSentence, &mailApp->viewerArgs->sentences[mailApp->viewerArgs->sentenceIndex]);
        } else {
            Sentence_InitWithType(&mailApp->selectedSentence, 3);
        }

        sub_02097500(mailApp->unk_08, &mailApp->selectedSentence);
        mailApp->appMan = ApplicationManager_New(&v3, mailApp->unk_08, mailApp->heapID);
        *state = MAIL_STATE_EDITING;
        break;
    case MAIL_STATE_EDITING:
        if (!MailApp_RunSubApplication(&mailApp->appMan)) {
            break;
        }

        if (sub_02097528(mailApp->unk_08) == 0) {
            sub_02097540(mailApp->unk_08, &mailApp->viewerArgs->sentences[mailApp->viewerArgs->sentenceIndex]);
        }

        sub_020974EC(mailApp->unk_08);
        *state = MAIL_STATE_OPEN_VIEWER;
        break;
    }

    return FALSE;
}

static BOOL MailApp_Exit(ApplicationManager *appMan, int *state)
{
    MailApp *mailApp = ApplicationManager_Data(appMan);

    MailViewerAppArgs_Free(mailApp->viewerArgs);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(mailApp->heapID);

    return TRUE;
}
