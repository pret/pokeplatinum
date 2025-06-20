#include <nitro.h>
#include <string.h>

#include "constants/items.h"
#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "struct_defs/mail.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_020978D8.h"

#include "overlay020/ov20_021D0D80.h"
#include "overlay075/ov75_021D0D80.h"

#include "game_records.h"
#include "heap.h"
#include "item.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "unk_02014A84.h"
#include "unk_02028124.h"
#include "unk_0209747C.h"

FS_EXTERN_OVERLAY(overlay20);
FS_EXTERN_OVERLAY(overlay75);

typedef struct {
    int heapID;
    u16 unk_04;
    u16 unk_06;
    void *unk_08;
    ApplicationManager *appMan;
    UnkStruct_020978D8 *unk_10;
    Sentence unk_14;
} UnkStruct_02097944;

static int sub_02097944(ApplicationManager *appMan, int *param1);
static int sub_020979A8(ApplicationManager *appMan, int *param1);
static int sub_02097AF8(ApplicationManager *appMan, int *param1);
BOOL sub_02097728(UnkStruct_02097728 *param0);
int sub_0209772C(UnkStruct_02097728 *param0, int param1, u8 param2);
int sub_02097750(UnkStruct_02097728 *param0, Pokemon *param1);
void sub_02097770(UnkStruct_02097728 *param0);
void sub_020978D8(UnkStruct_020978D8 *param0);
void sub_020978F0(Mail *param0, UnkStruct_020978D8 *param1);

const ApplicationManagerTemplate Unk_020F64B0 = {
    sub_02097944,
    sub_020979A8,
    sub_02097AF8,
    0xFFFFFFFF
};

UnkStruct_02097728 *sub_02097624(SaveData *saveData, int param1, u8 param2, u8 param3, int heapID)
{
    UnkStruct_02097728 *v0;
    int v2;

    MailBox *mailBox = SaveData_GetMailBox(saveData);
    v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(UnkStruct_02097728));

    MI_CpuClear8(v0, sizeof(UnkStruct_02097728));

    v0->unk_0F = param3;
    v0->unk_0E = param2;
    v0->mailBox = mailBox;
    v0->unk_00 = 1;
    v0->unk_08 = param1;
    v0->unk_0C = 0;
    v0->saveData = saveData;
    v0->unk_14 = Mail_New(heapID);

    Mail_Init(v0->unk_14);
    sub_020281AC(v0->unk_14, 0xFFFF, param2, saveData);

    return v0;
}

UnkStruct_02097728 *sub_0209767C(SaveData *saveData, int param1, u16 param2, int heapID)
{
    UnkStruct_02097728 *v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(UnkStruct_02097728));
    MI_CpuClear8(v0, sizeof(UnkStruct_02097728));

    v0->unk_00 = 0;
    v0->unk_08 = param1;
    v0->unk_0C = param2;
    v0->saveData = saveData;

    MailBox *mailBox = SaveData_GetMailBox(saveData);

    v0->mailBox = mailBox;
    v0->unk_14 = sub_020284A8(mailBox, param1, param2, heapID);

    return v0;
}

UnkStruct_02097728 *sub_020976BC(SaveData *saveData, Pokemon *param1, int heapID)
{
    UnkStruct_02097728 *v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(UnkStruct_02097728));
    MI_CpuClear8(v0, sizeof(UnkStruct_02097728));

    v0->unk_00 = 0;
    v0->saveData = saveData;
    v0->unk_14 = Mail_New(heapID);

    Pokemon_GetValue(param1, MON_DATA_MAIL, v0->unk_14);
    return v0;
}

UnkStruct_02097728 *sub_020976F4(SaveData *saveData, u8 param1, int heapID)
{
    UnkStruct_02097728 *v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(UnkStruct_02097728));
    MI_CpuClear8(v0, sizeof(UnkStruct_02097728));

    v0->unk_00 = 0;
    v0->saveData = saveData;
    v0->unk_14 = Mail_New(heapID);

    Mail_SetMailType(v0->unk_14, param1);
    return v0;
}

BOOL sub_02097728(UnkStruct_02097728 *param0)
{
    return param0->unk_04;
}

int sub_0209772C(UnkStruct_02097728 *param0, int param1, u8 param2)
{
    if (!sub_02097728(param0)) {
        return 0;
    }

    MailBox_CopyMailFromSlot(param0->mailBox, param1, param2, param0->unk_14);
    return 1;
}

int sub_02097750(UnkStruct_02097728 *param0, Pokemon *param1)
{
    if (!sub_02097728(param0)) {
        return 0;
    }

    Pokemon_SetValue(param1, MON_DATA_MAIL, param0->unk_14);
    return 1;
}

void sub_02097770(UnkStruct_02097728 *param0)
{
    if (param0->unk_14 != NULL) {
        Heap_FreeToHeap(param0->unk_14);
    }

    Heap_FreeToHeap(param0);
}

int sub_02097788(MailBox *mailBox, Pokemon *mon, int heapID)
{
    int item = ITEM_NONE;
    int slot = Mail_GetEmptySlotInArray(mailBox, 0);

    if (slot == 0xFFFFFFFF) {
        return 0xFFFFFFFF;
    }

    Mail *mail = Mail_New(heapID);

    Pokemon_GetValue(mon, MON_DATA_MAIL, mail);
    MailBox_CopyMailFromSlot(mailBox, 0, slot, mail);
    Mail_Init(mail);
    Pokemon_SetValue(mon, MON_DATA_MAIL, mail);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
    Heap_FreeToHeap(mail);

    return slot;
}

int sub_020977E4(MailBox *mailBox, u16 param1, Pokemon *mon, int heapID)
{
    int item = 0;
    Mail *mail = sub_020284A8(mailBox, 0, param1, heapID);

    if (mail == NULL) {
        return 0xFFFFFFFF;
    }

    item = Item_ForMailNumber(Mail_GetMailType(mail));

    Pokemon_SetValue(mon, MON_DATA_MAIL, mail);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
    sub_02028470(mailBox, 0, param1);
    Heap_FreeToHeap(mail);

    return param1;
}

UnkStruct_020978D8 *sub_02097834(const Mail *mail, int heapID)
{
    u16 i;
    UnkStruct_020978D8 *v1 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_020978D8));
    MI_CpuClear8(v1, sizeof(UnkStruct_020978D8));

    v1->unk_00 = 0;
    v1->unk_08 = Mail_GetTrainerID(mail);
    v1->unk_10 = Strbuf_Init(8, heapID);

    Strbuf_CopyChars(v1->unk_10, sub_0202830C((Mail *)mail));

    v1->mailType = Mail_GetMailType(mail);
    v1->language = Mail_GetLanguage(mail);
    v1->gameVersion = Mail_GetGameVersion(mail);

    for (i = 0; i < 3; i++) {
        v1->unk_14[i].val2 = sub_02028328(mail, i, 2, sub_02028408(mail));
    }

    for (i = 0; i < 3; i++) {
        sub_02014CC0(&v1->unk_1A[i], sub_0202840C((Mail *)mail, i));
    }

    return v1;
}

void sub_020978D8(UnkStruct_020978D8 *param0)
{
    if (param0->unk_10 != NULL) {
        Strbuf_Free(param0->unk_10);
    }

    Heap_FreeToHeap(param0);
}

void sub_020978F0(Mail *param0, UnkStruct_020978D8 *param1)
{
    u16 v0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0202841C(param0, &param1->unk_1A[v0], v0);
    }

    Mail_SetMailType(param0, param1->mailType);
}

static BOOL sub_02097920(ApplicationManager **appManPtr)
{
    if (*appManPtr) {
        if (ApplicationManager_Exec(*appManPtr)) {
            ApplicationManager_Free(*appManPtr);
            *appManPtr = NULL;
            return 1;
        }
    }

    return 0;
}

static int sub_02097944(ApplicationManager *appMan, int *param1)
{
    UnkStruct_02097944 *v0 = NULL;
    UnkStruct_02097728 *v1 = (UnkStruct_02097728 *)ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_40, 0x1000);
    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_02097944), HEAP_ID_40);
    MI_CpuClear8(v0, sizeof(UnkStruct_02097944));

    v0->heapID = HEAP_ID_40;
    v0->unk_10 = sub_02097834(v1->unk_14, v0->heapID);
    v0->unk_10->options = SaveData_GetOptions(v1->saveData);

    if (v1->unk_00 == 1) {
        v0->unk_10->mailType = v1->unk_0F;
    }

    if (v0->unk_10->mailType >= NUM_MAILS) {
        v0->unk_10->mailType = 0;
    }

    v0->unk_10->unk_00 = v1->unk_00;

    return 1;
}

static int sub_020979A8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_02097944 *v0 = ApplicationManager_Data(appMan);
    UnkStruct_02097728 *v1 = (UnkStruct_02097728 *)ApplicationManager_Args(appMan);

    FS_EXTERN_OVERLAY(overlay75);
    FS_EXTERN_OVERLAY(overlay20);

    static const ApplicationManagerTemplate v2 = {
        ov75_021D0D80,
        ov75_021D0DF8,
        ov75_021D0E10,
        FS_OVERLAY_ID(overlay75),
    };
    static const ApplicationManagerTemplate v3 = {
        ov20_021D0D80,
        ov20_021D0DF8,
        ov20_021D0EA8,
        FS_OVERLAY_ID(overlay20),
    };

    switch (*param1) {
    case 0:
        v0->unk_10->unk_00 = v1->unk_00;
        v0->appMan = ApplicationManager_New(&v2, v0->unk_10, v0->heapID);
        *param1 = 1;
        break;
    case 1:
        if (!sub_02097920(&v0->appMan)) {
            break;
        }

        switch (v0->unk_10->unk_00) {
        case 0xFFFF:
            *param1 = 2;
            break;
        case 3:
            *param1 = 2;
            break;
        default:
            *param1 = 3;
            break;
        }
        break;
    case 2:
        if (v1->unk_00 == 1) {
            if (v0->unk_10->unk_00 == 3) {
                sub_020978F0(v1->unk_14, v0->unk_10);

                GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(v1->saveData), TRAINER_SCORE_EVENT_UNK_02);
                GameRecords_IncrementRecordValue(SaveData_GetGameRecords(v1->saveData), RECORD_UNK_045);
                v1->unk_04 = 1;
            } else {
                v1->unk_04 = 0;
            }
        }

        return 1;
    case 3:
        v0->unk_08 = sub_0209747C(2, 0, v1->saveData, v0->heapID);

        if (sub_02014BBC(&(v0->unk_10->unk_1A[v0->unk_10->unk_02]))) {
            sub_02014CC0(&(v0->unk_14), &(v0->unk_10->unk_1A[v0->unk_10->unk_02]));
        } else {
            sub_02014A9C(&(v0->unk_14), 3);
        }

        sub_02097500(v0->unk_08, &(v0->unk_14));
        v0->appMan = ApplicationManager_New(&v3, v0->unk_08, v0->heapID);
        *param1 = 4;
        break;
    case 4:
        if (!sub_02097920(&v0->appMan)) {
            break;
        }

        if (sub_02097528(v0->unk_08) == 0) {
            sub_02097540(v0->unk_08, &(v0->unk_10->unk_1A[v0->unk_10->unk_02]));
        }

        sub_020974EC(v0->unk_08);
        *param1 = 0;
        break;
    }

    return 0;
}

static int sub_02097AF8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_02097944 *v0 = ApplicationManager_Data(appMan);

    sub_020978D8(v0->unk_10);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(v0->heapID);

    return 1;
}
