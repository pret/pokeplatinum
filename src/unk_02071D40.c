#include "unk_02071D40.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_0202C834_decl.h"
#include "struct_decls/struct_0202C844_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_defs/struct_02072014.h"

#include "field/field_system.h"

#include "charcode_util.h"
#include "field_system.h"
#include "field_task.h"
#include "game_records.h"
#include "heap.h"
#include "play_time.h"
#include "save_player.h"
#include "savedata.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_0202854C.h"
#include "unk_0202C7FC.h"
#include "unk_0203061C.h"
#include "unk_0203D1B8.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "vars_flags.h"

typedef struct {
    int unk_00;
    TrainerCard *unk_04;
} UnkStruct_02072204;

static void sub_02072014(const u8 param0, const u8 param1, const u8 param2, const u8 param3, const u8 param4, TrainerCard *param5);
static void sub_02072038(const u16 param0, const u8 param1, const u16 *param2, const u32 param3, const u32 param4, const BOOL param5, const u32 param6, TrainerCard *param7);
static void sub_0207207C(const u8 param0, const PlayTime *playTime, const RTCDate *param2, const RTCDate *param3, const RTCTime *param4, const u8 param5, TrainerCard *param6);
static void sub_02072120(const u32 param0, const u32 param1, const u32 param2, const u32 param3, const u8 *param4, TrainerCard *param5);
static void sub_0207216C(TrainerInfo *param0, FieldSystem *fieldSystem, TrainerCard *param2);
static BOOL sub_02072230(FieldTask *param0);

void sub_02071D40(const u8 param0, const u8 param1, const u8 param2, const u8 param3, FieldSystem *fieldSystem, TrainerCard *param5)
{
    TrainerInfo *v0;
    GameRecords *v1;
    SaveData *v2;

    v2 = FieldSystem_GetSaveData(fieldSystem);
    v0 = SaveData_GetTrainerInfo(v2);
    v1 = SaveData_GetGameRecordsPtr(v2);

    param5->unk_05 = param3;

    {
        u8 v3;

        v3 = sub_02071F28(fieldSystem);
        sub_02072014(param0, GAME_VERSION, v3, param2, TrainerInfo_RegionCode(v0), param5);
    }

    sub_02072038(TrainerInfo_ID_LowHalf(v0), TrainerInfo_Gender(v0), TrainerInfo_Name(v0), TrainerInfo_Money(v0), Pokedex_CountSeen(SaveData_Pokedex(fieldSystem->saveData)), Pokedex_IsObtained(SaveData_Pokedex(fieldSystem->saveData)), GameRecords_GetTrainerScore(v1), param5);

    {
        RTCDate v4;
        RTCDate v5;
        RTCTime v6;
        PlayTime *playTime;

        playTime = SaveData_GetPlayTime(v2);

        sub_02055BF4(fieldSystem, &v4, &v6);
        sub_02055C10(fieldSystem, &v5, &v6);
        sub_0207207C(SystemFlag_CheckGameCompleted(SaveData_GetVarsFlags(fieldSystem->saveData)), playTime, &v4, &v5, &v6, param1, param5);
    }

    {
        u32 v8, v9, v10, v11;
        UnkStruct_0202C834 *v12;

        v12 = sub_0202C834(fieldSystem->saveData);
        v8 = GameRecords_GetRecordValue(v1, RECORD_UNK_091) + GameRecords_GetRecordValue(v1, RECORD_UNK_019) + GameRecords_GetRecordValue(v1, RECORD_UNK_024) + GameRecords_GetRecordValue(v1, RECORD_UNK_020) + GameRecords_GetRecordValue(v1, RECORD_UNK_025) + GameRecords_GetRecordValue(v1, RECORD_UNK_032);
        v9 = GameRecords_GetRecordValue(v1, RECORD_UNK_021) + GameRecords_GetRecordValue(v1, RECORD_UNK_026);
        v10 = GameRecords_GetRecordValue(v1, RECORD_UNK_022) + GameRecords_GetRecordValue(v1, RECORD_UNK_027);
        v11 = GameRecords_GetRecordValue(v1, RECORD_UNK_019) + GameRecords_GetRecordValue(v1, RECORD_UNK_024);

        sub_02072120(v8, v9, v10, v11, sub_0202C840(v12), param5);
    }

    sub_0207216C(v0, fieldSystem, param5);

    {
        int v13, v14 = 0;
        u8 *v15 = (u8 *)param5;

        for (v13 = 0; v13 < sizeof(TrainerCard); v13++) {
            v14 ^= v15[v13];
        }

        param5->unk_668 = v14;
    }

    param5->unk_66A = 0;
}

TrainerCard *sub_02071F04(const u16 param0)
{
    TrainerCard *v0 = Heap_AllocFromHeap(param0, sizeof(TrainerCard));

    memset(v0, 0, sizeof(TrainerCard));
    return v0;
}

void sub_02071F20(TrainerCard *param0)
{
    Heap_FreeToHeap(param0);
}

u8 sub_02071F28(FieldSystem *fieldSystem)
{
    u8 v0;
    SaveData *v1;
    GameRecords *v2;
    VarsFlags *v3;
    SecretBaseRecord *v4;
    UnkStruct_0203068C *v5;

    v1 = FieldSystem_GetSaveData(fieldSystem);
    v2 = SaveData_GetGameRecordsPtr(v1);
    v3 = SaveData_GetVarsFlags(v1);
    v4 = SaveData_SecretBaseRecord(v1);
    v5 = sub_0203068C(v1);
    v0 = 0;

    if (SystemFlag_CheckGameCompleted(v3)) {
        v0++;
    }

    if (sub_02026EF4(SaveData_Pokedex(v1))) {
        v0++;
    }

    if ((sub_02030698(v5, 0, 0xff) >= 100) || (sub_02030698(v5, 2, 0xff) >= 100) || (sub_02030698(v5, 4, 0xff) >= 100) || (sub_02030698(v5, 6, 0xff) >= 100) || (sub_02030698(v5, 8, 0xff) >= 100)) {
        v0++;
    }

    if (SystemFlag_CheckContestMaster(v3, 0) || SystemFlag_CheckContestMaster(v3, 1) || SystemFlag_CheckContestMaster(v3, 3) || SystemFlag_CheckContestMaster(v3, 4) || SystemFlag_CheckContestMaster(v3, 2)) {
        v0++;
    }

    if (sub_020294C0(v4) == 1) {
        v0++;
    }

    return v0;
}

static void sub_02072014(const u8 param0, const u8 param1, const u8 param2, const u8 param3, const u8 param4, TrainerCard *param5)
{
    param5->unk_04_0 = param0;
    param5->unk_00 = param1;
    param5->unk_03 = param2;
    param5->unk_01 = param4;
    param5->unk_02 = param3;
}

static void sub_02072038(const u16 param0, const u8 param1, const u16 *param2, const u32 param3, const u32 param4, const BOOL param5, const u32 param6, TrainerCard *param7)
{
    param7->unk_28 = param0;
    param7->unk_04_2 = param1;

    CharCode_CopyNumChars(param7->unk_08, param2, 7 + 1);

    param7->unk_1C = param3;
    param7->unk_20 = param4;
    param7->unk_04_3 = param5;
    param7->unk_24 = param6;
}

static void sub_0207207C(const u8 param0, const PlayTime *playTime, const RTCDate *param2, const RTCDate *param3, const RTCTime *param4, const u8 param5, TrainerCard *trainerCard)
{
    trainerCard->playTimeHours = PlayTime_GetHours(playTime);
    trainerCard->playTimeMinutes = PlayTime_GetMinutes(playTime);
    trainerCard->unk_2F = param2->year;
    trainerCard->unk_30 = param2->month;
    trainerCard->unk_31 = param2->day;

    if (param0) {
        trainerCard->unk_32 = param3->year;
        trainerCard->unk_33 = param3->month;
        trainerCard->unk_34 = param3->day;
        trainerCard->unk_2C = param4->hour;
        trainerCard->unk_35 = param4->minute;
    } else {
        trainerCard->unk_32 = 0;
        trainerCard->unk_33 = 0;
        trainerCard->unk_34 = 0;
        trainerCard->unk_2C = 0;
        trainerCard->unk_35 = 0;
    }

    trainerCard->unk_04_1 = param5;

    if (param5) {
        trainerCard->playTime = playTime;
    } else {
        trainerCard->playTime = NULL;
    }
}

static void sub_02072120(const u32 param0, const u32 param1, const u32 param2, const u32 param3, const u8 *param4, TrainerCard *param5)
{
    param5->unk_38 = param0;

    if (param5->unk_38 > 999999) {
        param5->unk_38 = 999999;
    }

    param5->unk_3C = param1;
    param5->unk_40 = param2;

    if (param5->unk_3C > 9999) {
        param5->unk_3C = 9999;
    }

    if (param5->unk_40 > 9999) {
        param5->unk_40 = 9999;
    }

    param5->unk_44 = param3;

    if (param5->unk_44 > 99999) {
        param5->unk_44 = 99999;
    }

    MI_CpuCopy8(param4, param5->unk_68, 24 * 8 * 8);
}

static void sub_0207216C(TrainerInfo *param0, FieldSystem *fieldSystem, TrainerCard *param2)
{
    u8 v0;
    UnkStruct_0202C834 *v1;
    UnkStruct_0202C844 *v2;

    v1 = sub_0202C834(fieldSystem->saveData);
    v2 = sub_0202C844(v1);

    for (v0 = 0; v0 < 8; v0++) {
        if (TrainerInfo_HasBadge(param0, v0)) {
            param2->unk_48[v0].unk_00_0 = 1;
        } else {
            param2->unk_48[v0].unk_00_0 = 0;
        }

        param2->unk_48[v0].unk_00_1 = sub_0202C848(v0, v2);
    }
}

void sub_020721D4(FieldSystem *fieldSystem, const TrainerCard *param1)
{
    u8 v0;
    UnkStruct_0202C834 *v1;
    UnkStruct_0202C844 *v2;

    v1 = sub_0202C834(fieldSystem->saveData);
    v2 = sub_0202C844(v1);

    for (v0 = 0; v0 < 8; v0++) {
        sub_0202C850(v0, param1->unk_48[v0].unk_00_1, v2);
    }
}

void sub_02072204(FieldSystem *fieldSystem)
{
    UnkStruct_02072204 *v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02072204));

    v0->unk_00 = 0;
    v0->unk_04 = (TrainerCard *)sub_0205C17C(fieldSystem->unk_7C);

    FieldTask_InitCall(fieldSystem->task, sub_02072230, v0);
}

static BOOL sub_02072230(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_02072204 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0205C214(fieldSystem->unk_7C);
        v1->unk_00 = 1;
    case 1:
        if (v1->unk_04->unk_66A != 0) {
            v1->unk_00 = 10;
        }
        break;
    case 10:
        sub_0203E09C(fieldSystem, v1->unk_04);
        v1->unk_00 = 11;
        break;
    case 11:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            sub_0205C1F0(fieldSystem->unk_7C);
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}
