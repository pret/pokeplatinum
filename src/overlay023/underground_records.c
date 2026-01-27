#include "overlay023/underground_records.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/heap.h"

#include "struct_defs/underground.h"
#include "struct_defs/underground_record.h"

#include "overlay023/underground_manager.h"
#include "overlay023/underground_text_printer.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "game_records.h"
#include "heap.h"
#include "list_menu.h"
#include "message.h"
#include "render_window.h"
#include "savedata.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0202854C.h"

#include "res/text/bank/underground_pc.h"
#include "res/text/bank/underground_records.h"

typedef int (*GetRecordEntryFunc)(const UndergroundRecord *);

typedef struct RecordsEnv {
    RecordScreenContext *trainerCaseCtx;
    SysTask *trainerCaseTask;
    SaveData *saveData;
    UndergroundRecord *record;
    UndergroundRecord *linkRecord;
    MATHRandContext32 dummy;
    u8 linkRecordReceived;
} RecordsEnv;

typedef struct RecordBuffer {
    u8 netID;
    u8 undergroundRecord[sizeof(UndergroundRecord)];
} RecordBuffer;

#define RECORD_ENTRY_MESSAGES_START UndergroundRecords_Text_Score

#define NUM_TRAINER_CASE_ENTRIES 7

#define DECORATION_MESSAGES_START UndergroundRecords_Text_SomethingWrittenTotalScore
#define DECORATION_MESSAGES_MAX   UndergroundRecords_Text_SomethingWrittenFlagsRegistered

#define ENTRIES_BASE_X            2
#define ENTRIES_BASE_Y            39
#define ID_X_OFFSET               130
#define NAME_RANK_X_OFFSET        55
#define FLAG_RANK_Y_OFFSET        17
#define TRAINER_CASE_LINE_HEIGHT  16
#define FLAGS_SCREEN_LINE_HEIGHT  17
#define TRAINER_CASE_NUM_X_OFFSET 146
#define FLAGS_SCREEN_NUM_X_OFFSET 100

static RecordsEnv *recordsEnv = NULL;
static void UndergroundRecords_ExitTrainerCase(SysTask *sysTask, void *data);

void RecordsEnv_Init(void *dest, UndergroundRecord *undergroundRecord, SaveData *saveData)
{
    MI_CpuFill8(dest, 0, sizeof(RecordsEnv));

    recordsEnv = dest;
    recordsEnv->saveData = saveData;
    recordsEnv->record = undergroundRecord;
    recordsEnv->linkRecord = UndergroundRecord_Init(HEAP_ID_COMMUNICATION);

    CommSys_Seed(&recordsEnv->dummy);
}

void RecordsEnv_Free(void)
{
    Heap_Free(recordsEnv->linkRecord);
    Heap_Free(recordsEnv);

    recordsEnv = NULL;
}

void UndergroundRecords_ForceExitTrainerCase(void)
{
    if (recordsEnv->trainerCaseTask) {
        UndergroundRecords_ExitTrainerCase(recordsEnv->trainerCaseTask, recordsEnv->trainerCaseCtx);
    }
}

void UndergroundRecords_Dummy(void)
{
    return;
}

int RecordsEnv_Size(void)
{
    return sizeof(RecordsEnv);
}

static GetRecordEntryFunc sGetRecordEntryFuncs[] = {
    UndergroundRecord_GetTrainerScore,
    UndergroundRecord_GetPeopleMet,
    UndergroundRecord_GetNumGiftsGiven,
    UndergroundRecord_GetCapturedFlagCount,
    UndergroundRecord_GetNumSpheresDug,
    UndergroundRecord_GetNumFossilsDug,
    UndergroundRecord_GetNumTrapHits,
    UndergroundRecord_GetNumTrapsTriggered,
    UndergroundRecord_GetNumPlayersHelped,
    UndergroundRecord_GetGiftsReceived,
    UndergroundRecord_GetTimesFlagTaken,
    UndergroundRecord_GetFlagsRecovered,
    UndergroundRecord_GetTimesBaseMoved,
    UndergroundRecord_GetCapturedFlagCount
};

static void UndergroundRecords_DrawTrainerCase(Window *window, MessageLoader *loader, TrainerInfo *trainerInfo, const UndergroundRecord *undergroundRecord)
{
    StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD1);
    String *string = String_Init(30, HEAP_ID_FIELD1);
    String *formattedString = String_Init(30, HEAP_ID_FIELD1);

    MessageLoader_GetString(loader, UndergroundRecords_Text_Name, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetString(loader, UndergroundRecords_Text_BaseFlag, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X, FLAG_RANK_Y_OFFSET, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetString(loader, UndergroundRecords_Text_ID, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X + ID_X_OFFSET, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    StringTemplate_SetNumber(template, 6, TrainerInfo_ID_LowHalf(trainerInfo), 5, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    MessageLoader_GetString(loader, UndergroundRecords_Text_IDTemplate, string);
    StringTemplate_Format(template, formattedString, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, formattedString, ENTRIES_BASE_X + TRAINER_CASE_NUM_X_OFFSET, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    StringTemplate_SetPlayerName(template, 0, trainerInfo);
    MessageLoader_GetString(loader, UndergroundRecords_Text_NameTemplate, string);
    StringTemplate_Format(template, formattedString, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, formattedString, ENTRIES_BASE_X + NAME_RANK_X_OFFSET, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    int i = UndergroundRecord_GetFlagRank(undergroundRecord);
    MessageLoader_GetString(loader, UndergroundRecords_Text_NormalFlag + i, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X + NAME_RANK_X_OFFSET, FLAG_RANK_Y_OFFSET, TEXT_SPEED_NO_TRANSFER, NULL);

    for (i = 0; i < NUM_TRAINER_CASE_ENTRIES; i++) {
        MessageLoader_GetString(loader, RECORD_ENTRY_MESSAGES_START + i, string);
        Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X, ENTRIES_BASE_Y + TRAINER_CASE_LINE_HEIGHT * i, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    for (i = 0; i < NUM_TRAINER_CASE_ENTRIES; i++) {
        GetRecordEntryFunc getEntry = sGetRecordEntryFuncs[i];

        int entry = getEntry(undergroundRecord);
        StringTemplate_SetNumber(template, 6, entry, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        MessageLoader_GetString(loader, UndergroundRecords_Text_EntryTemplate, string);
        StringTemplate_Format(template, formattedString, string);
        Text_AddPrinterWithParams(window, FONT_SYSTEM, formattedString, ENTRIES_BASE_X + TRAINER_CASE_NUM_X_OFFSET, ENTRIES_BASE_Y + TRAINER_CASE_LINE_HEIGHT * i, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    String_Free(string);
    String_Free(formattedString);
    StringTemplate_Free(template);
}

static void UndergroundRecords_ExitTrainerCase(SysTask *sysTask, void *data)
{
    RecordScreenContext *ctx = data;

    Window_EraseStandardFrame(&ctx->window, FALSE);
    Window_ClearAndCopyToVRAM(&ctx->window);
    Window_Remove(&ctx->window);

    ExitRecordScreenCallback exitCallback = ctx->exitCallback;

    if (exitCallback != NULL) {
        exitCallback(ctx->exitCallbackArg);
    }

    Heap_Free(ctx);
    SysTask_Done(sysTask);

    recordsEnv->trainerCaseTask = NULL;
    recordsEnv->trainerCaseCtx = NULL;
}

static void UndergroundRecords_TrainerCaseTask(SysTask *sysTask, void *data)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        UndergroundRecords_ExitTrainerCase(sysTask, data);
    }
}

void UndergroundRecords_ShowTrainerCase(BgConfig *bgConfig, TrainerInfo *trainerInfo, ExitRecordScreenCallback exitCallback, void *exitCallbackArg, BOOL isCurrentTrainer)
{
    RecordScreenContext *ctx = Heap_Alloc(HEAP_ID_FIELD1, sizeof(RecordScreenContext));

    MI_CpuClear8(ctx, sizeof(RecordScreenContext));

    ctx->exitCallback = exitCallback;
    ctx->exitCallbackArg = exitCallbackArg;

    Window_Add(bgConfig, &ctx->window, BG_LAYER_MAIN_3, 4, 2, 24, 19, 13, 1);
    Window_DrawStandardFrame(&ctx->window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_RECORDS, HEAP_ID_FIELD1);
    Window_FillTilemap(&ctx->window, 15);

    UndergroundRecord *undergroundRecord;
    if (isCurrentTrainer) {
        undergroundRecord = recordsEnv->record;
    } else {
        undergroundRecord = recordsEnv->linkRecord;
    }

    UndergroundRecords_DrawTrainerCase(&ctx->window, loader, trainerInfo, undergroundRecord);

    Window_ScheduleCopyToVRAM(&ctx->window);
    Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);

    recordsEnv->trainerCaseTask = SysTask_Start(UndergroundRecords_TrainerCaseTask, ctx, 10);
    recordsEnv->trainerCaseCtx = ctx;

    MessageLoader_Free(loader);
}

void UndergroundRecords_SendRecord(int targetNetID)
{
    int size = UndergroundRecord_Size();
    int trainerScore = GameRecords_GetTrainerScore(SaveData_GetGameRecords(recordsEnv->saveData));
    RecordBuffer *buffer = Heap_Alloc(HEAP_ID_FIELD1, size + 1);

    MI_CpuClear8(buffer, size + 1);
    buffer->netID = targetNetID;

    if (trainerScore >= 999999) {
        trainerScore = 999999;
    }

    UndergroundRecord_SetTrainerScore(recordsEnv->record, trainerScore);

    MI_CpuCopy8(recordsEnv->record, &buffer->undergroundRecord, size);

    CommSys_SendData(81, buffer, size + 1);
    Heap_Free(buffer);
}

void UndergroundRecords_RetrieveTrainerScore(void)
{
    int trainerScore = GameRecords_GetTrainerScore(SaveData_GetGameRecords(recordsEnv->saveData));

    if (trainerScore >= 999999) {
        trainerScore = 999999;
    }

    UndergroundRecord_SetTrainerScore(recordsEnv->record, trainerScore);
}

void UndergroundRecords_SendRecordServer(int unused0, int size, void *data, void *unused3)
{
    CommSys_SendDataServer(82, data, size);
}

void UndergroundRecords_ProcessLinkRecord(int unused0, int size, void *data, void *unused3)
{
    RecordBuffer *buffer = data;

    if (buffer->netID == CommSys_CurNetId()) {
        MI_CpuCopy8(&buffer->undergroundRecord, recordsEnv->linkRecord, size - 1);
        recordsEnv->linkRecordReceived = TRUE;
    }
}

BOOL UndergroundRecords_IsLinkRecordReceived(void)
{
    return recordsEnv->linkRecordReceived;
}

void UndergroundRecords_ClearLinkRecordReceived(void)
{
    recordsEnv->linkRecordReceived = FALSE;
}

static void UndergroundRecords_ResumeFieldSystem(int unused)
{
    CommPlayerMan_ResumeFieldSystem();
}

void UndergroundRecords_PrintEntryForDecoration(UndergroundRecord *undergroundRecord, int bankEntry)
{
    GetRecordEntryFunc getEntry = sGetRecordEntryFuncs[bankEntry - DECORATION_MESSAGES_START];

    GF_ASSERT(bankEntry >= DECORATION_MESSAGES_START);
    GF_ASSERT(bankEntry <= DECORATION_MESSAGES_MAX);

    CommPlayerMan_PauseFieldSystem();
    UndergroundTextPrinter_ChangeMessageLoaderBank(UndergroundMan_GetMiscTextPrinter(), TEXT_BANK_UNDERGROUND_RECORDS, MSG_LOADER_LOAD_ON_DEMAND);

    UndergroundRecord *undergroundRecordCopy = UndergroundRecord_Init(HEAP_ID_FIELD1);
    MI_CpuCopy8(undergroundRecord, undergroundRecordCopy, UndergroundRecord_Size());

    int entry = getEntry(undergroundRecordCopy);
    Heap_Free(undergroundRecordCopy);

    UndergroundTextPrinter_SetNumber(UndergroundMan_GetMiscTextPrinter(), entry);
    UndergroundTextPrinter_PrintText(UndergroundMan_GetMiscTextPrinter(), bankEntry, TRUE, UndergroundRecords_ResumeFieldSystem);
}

static void UndergroundRecords_DrawCheckFlagsScreen(Window *window, MessageLoader *loader, TrainerInfo *trainerInfo, const UndergroundRecord *undergroundRecord, const Underground *underground)
{
    StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD1);
    String *string = String_Init(40, HEAP_ID_FIELD1);
    String *formattedString = String_Init(40, HEAP_ID_FIELD1);

    StringTemplate_SetPlayerName(template, 1, trainerInfo);
    MessageLoader_GetString(loader, UndergroundPC_Text_PlayersBase, string);
    StringTemplate_Format(template, formattedString, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, formattedString, ENTRIES_BASE_X, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetString(loader, UndergroundPC_Text_FlagsObtained, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X, 1 + FLAGS_SCREEN_LINE_HEIGHT, TEXT_SPEED_NO_TRANSFER, NULL);

    StringTemplate_SetNumber(template, 6, UndergroundRecord_GetCapturedFlagCount(undergroundRecord), 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    MessageLoader_GetString(loader, UndergroundPC_Text_FlagsObtainedTemplate, string);
    StringTemplate_Format(template, formattedString, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, formattedString, ENTRIES_BASE_X + FLAGS_SCREEN_NUM_X_OFFSET, 1 + FLAGS_SCREEN_LINE_HEIGHT, TEXT_SPEED_NO_TRANSFER, NULL);

    MessageLoader_GetString(loader, UndergroundPC_Text_MostRecentFlag, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X, 1 + FLAGS_SCREEN_LINE_HEIGHT * 3, TEXT_SPEED_NO_TRANSFER, NULL);

    for (int i = 0; i < MAX_CAPTURED_FLAG_RECORDS; i++) {
        TrainerInfo *flagOwnerInfo = Underground_GetRegisteredFlagOwnerInfo(underground, HEAP_ID_FIELD1, i);

        if (flagOwnerInfo) {
            StringTemplate_SetPlayerName(template, 0, flagOwnerInfo);
            MessageLoader_GetString(loader, UndergroundPC_Text_PlayersFlag, string);
            StringTemplate_Format(template, formattedString, string);
            Text_AddPrinterWithParams(window, FONT_SYSTEM, formattedString, ENTRIES_BASE_X, 1 + FLAGS_SCREEN_LINE_HEIGHT * (4 + i), TEXT_SPEED_NO_TRANSFER, NULL);

            StringTemplate_SetNumber(template, 5, TrainerInfo_ID_LowHalf(flagOwnerInfo), 5, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
            MessageLoader_GetString(loader, UndergroundPC_Text_IDTemplate, string);
            StringTemplate_Format(template, formattedString, string);

            Text_AddPrinterWithParams(window, FONT_SYSTEM, formattedString, ENTRIES_BASE_X + FLAGS_SCREEN_NUM_X_OFFSET, 1 + FLAGS_SCREEN_LINE_HEIGHT * (4 + i), TEXT_SPEED_NO_TRANSFER, NULL);
            Heap_Free(flagOwnerInfo);
        } else {
            MessageLoader_GetString(loader, UndergroundPC_Text_Blank, string);
            Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X, 1 + FLAGS_SCREEN_LINE_HEIGHT * (4 + i), TEXT_SPEED_NO_TRANSFER, NULL);
            MessageLoader_GetString(loader, UndergroundPC_Text_IDBlank, string);
            Text_AddPrinterWithParams(window, FONT_SYSTEM, string, ENTRIES_BASE_X + FLAGS_SCREEN_NUM_X_OFFSET, 1 + FLAGS_SCREEN_LINE_HEIGHT * (4 + i), TEXT_SPEED_NO_TRANSFER, NULL);
        }
    }

    String_Free(string);
    String_Free(formattedString);
    StringTemplate_Free(template);
}

RecordScreenContext *UndergroundRecords_ShowCheckFlagsScreen(BgConfig *bgConfig, TrainerInfo *trainerInfo, Underground *underground, ExitRecordScreenCallback exitCallback, void *exitCallbackArg)
{
    RecordScreenContext *ctx = Heap_Alloc(HEAP_ID_FIELD1, sizeof(RecordScreenContext));

    MI_CpuClear8(ctx, sizeof(RecordScreenContext));

    ctx->exitCallback = exitCallback;
    ctx->exitCallbackArg = exitCallbackArg;

    Window_Add(bgConfig, &ctx->window, BG_LAYER_MAIN_3, 4, 2, 24, 19, 13, 1);
    Window_DrawStandardFrame(&ctx->window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_PC, HEAP_ID_FIELD1);
    Window_FillTilemap(&ctx->window, 15);

    UndergroundRecord *undergroundRecord = recordsEnv->record;
    UndergroundRecords_DrawCheckFlagsScreen(&ctx->window, loader, trainerInfo, undergroundRecord, underground);

    Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
    Window_ScheduleCopyToVRAM(&ctx->window);
    MessageLoader_Free(loader);

    return ctx;
}

void UndergroundRecords_ExitCheckFlagsScreen(RecordScreenContext *ctx)
{
    Window_EraseStandardFrame(&ctx->window, FALSE);
    Window_ClearAndCopyToVRAM(&ctx->window);
    Window_Remove(&ctx->window);

    ExitRecordScreenCallback exitCallback = ctx->exitCallback;

    if (exitCallback != NULL) {
        exitCallback(ctx->exitCallbackArg);
    }

    Heap_Free(ctx);
}
