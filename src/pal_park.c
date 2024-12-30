#include "pal_park.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/species.h"
#include "consts/game_records.h"

#include "struct_decls/struct_02024440_decl.h"
#include "struct_decls/struct_020564B4_decl.h"

#include "field/field_system.h"
#include "savedata/save_table.h"

#include "field_battle_data_transfer.h"
#include "game_records.h"
#include "heap.h"
#include "inlines.h"
#include "map_tile_behavior.h"
#include "narc.h"
#include "pokemon.h"
#include "rtc.h"
#include "unk_0202EEC0.h"
#include "unk_02054D00.h"

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_020564B4_sub1;

struct UnkStruct_020564B4_t {
    UnkStruct_020564B4_sub1 unk_00[6];
    u8 unk_30[6];
    int unk_38;
    int unk_3C;
    s64 unk_40;
    int unk_48;
};

static void sub_0205642C(FieldSystem *fieldSystem, UnkStruct_020564B4 *param1);
static void sub_02056624(FieldSystem *fieldSystem, FieldBattleDTO *param1, UnkStruct_020564B4 *param2);
static BOOL sub_02056554(FieldSystem *fieldSystem, UnkStruct_020564B4 *param1, int param2, int param3);
static FieldBattleDTO *sub_0205664C(FieldSystem *fieldSystem, UnkStruct_020564B4 *param1);
static NumMonsCaptured(UnkStruct_020564B4 *param0);
static void sub_020564D0(UnkStruct_020564B4 *param0);
static BOOL sub_020564F4(UnkStruct_020564B4 *param0);
static u32 CalculateTypePoints(UnkStruct_020564B4 *param0);
static u32 CalculateCatchingPoints(UnkStruct_020564B4 *param0);
static u32 GetTimePoints(UnkStruct_020564B4 *param0);

static UnkStruct_020564B4 Unk_021C07FC;

void sub_020562F8(FieldSystem *fieldSystem)
{
    int v0;
    UnkStruct_020564B4 *v1 = &Unk_021C07FC;

    MI_CpuClearFast(v1, sizeof(UnkStruct_020564B4));

    sub_0205642C(fieldSystem, v1);
    sub_020564D0(v1);

    v1->unk_40 = GetTimestamp();
}

void sub_02056328(FieldSystem *fieldSystem)
{
    UnkStruct_020564B4 *v0 = &Unk_021C07FC;
    GameRecords *v1 = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    s64 v2 = GetTimestamp();
    s64 v3 = TimeElapsed(v0->unk_40, v2);

    if (v3 < 1000) {
        v0->unk_48 = ((1000 - v3) * 2);
    } else {
        v0->unk_48 = 0;
    }

    GameRecords_IncrementTrainerScore(v1, TRAINER_SCORE_EVENT_UNK_17);
}

BOOL sub_02056374(FieldSystem *fieldSystem, int param1, int param2)
{
    if (sub_020564F4(&Unk_021C07FC) == 1) {
        return sub_02056554(fieldSystem, &Unk_021C07FC, param1, param2);
    } else {
        return 0;
    }
}

FieldBattleDTO *sub_0205639C(FieldSystem *fieldSystem)
{
    return sub_0205664C(fieldSystem, &Unk_021C07FC);
}

void sub_020563AC(FieldSystem *fieldSystem, FieldBattleDTO *param1)
{
    sub_02056624(fieldSystem, param1, &Unk_021C07FC);
}

int PalPark_GetParkBallCount(FieldSystem *fieldSystem)
{
    return 6 - NumMonsCaptured(&Unk_021C07FC);
}

int PalPark_GetCatchingPoints(FieldSystem *fieldSystem)
{
    return CalculateCatchingPoints(&Unk_021C07FC);
}

int PalPark_GetTimePoints(FieldSystem *fieldSystem)
{
    return GetTimePoints(&Unk_021C07FC);
}

int PalPark_GetTypePoints(FieldSystem *fieldSystem)
{
    return CalculateTypePoints(&Unk_021C07FC);
}

static void sub_02056400(u32 param0, u8 *param1)
{
    int v0;

    GF_ASSERT(0 < param0 && param0 <= NATIONAL_DEX_COUNT);
    v0 = (param0 - 1) * 6;

    NARC_ReadFromMemberByIndexPair(param1, NARC_INDEX_ARC__PPARK, 0, v0, sizeof(u8) * 6);
}

static void sub_0205642C(FieldSystem *fieldSystem, UnkStruct_020564B4 *param1)
{
    int v0;
    u8 v1[8];
    u16 v2;
    Pokemon *v3;
    PalParkTransfer *v4;

    v4 = SaveData_PalParkTransfer(fieldSystem->saveData);
    v3 = Pokemon_New(4);

    for (v0 = 0; v0 < 6; v0++) {
        param1->unk_30[v0] = 0;
        sub_0202F000(v4, v0, v3);

        v2 = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);

        param1->unk_00[v0].unk_00 = v2;
        sub_02056400(v2, v1);

        if (v1[0] != 0) {
            param1->unk_00[v0].unk_02 = v1[0];
        } else {
            param1->unk_00[v0].unk_02 = 5 - 1 + v1[1];
        }

        param1->unk_00[v0].unk_03 = v1[3];
        param1->unk_00[v0].unk_04 = v1[2];
        param1->unk_00[v0].unk_06 = Pokemon_GetValue(v3, MON_DATA_TYPE_1, NULL);
        param1->unk_00[v0].unk_07 = Pokemon_GetValue(v3, MON_DATA_TYPE_2, NULL);
    }

    Heap_FreeToHeap(v3);
}

static int NumMonsCaptured(UnkStruct_020564B4 *param0)
{
    int i;
    int numMonsCaptured = 0;

    for (i = 0; i < 6; i++) {
        if (param0->unk_30[i] != 0) {
            numMonsCaptured++;
        }
    }

    return numMonsCaptured;
}

static void sub_020564D0(UnkStruct_020564B4 *param0)
{
    param0->unk_38 = inline_020564D0(10) + 5;
}

static BOOL sub_020564F4(UnkStruct_020564B4 *param0)
{
    param0->unk_38--;

    if (param0->unk_38 == 0) {
        sub_020564D0(param0);
        return 1;
    }

    return 0;
}

static int sub_0205650C(FieldSystem *fieldSystem, int param1, int param2)
{
    u16 v0 = FieldSystem_GetTileBehavior(fieldSystem, param1, param2);
    int v1;

    v1 = (param1 < 32) ? 0 : 1;
    v1 += (param2 < 32) ? 0 : 2;

    if (TileBehavior_IsTallGrass(v0)) {
        return 1 + v1;
    } else if (TileBehavior_IsSurfable(v0)) {
        return 5 + v1;
    }

    return 0;
}

static BOOL sub_02056554(FieldSystem *fieldSystem, UnkStruct_020564B4 *param1, int param2, int param3)
{
    int v0;
    int v1, v2 = 0;
    int v3 = sub_0205650C(fieldSystem, param2, param3);

    if (v3 == 0) {
        return 0;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if ((param1->unk_30[v0] == 0) && (param1->unk_00[v0].unk_02 == v3)) {
            v2 += param1->unk_00[v0].unk_03;
        }
    }

    if (v2 == 0) {
        return 0;
    }

    v1 = inline_020564D0(v2 + 20);

    if (v1 < 20) {
        return 0;
    }

    v1 -= 20;

    for (v0 = 0; v0 < 6; v0++) {
        if ((param1->unk_30[v0] == 0) && (param1->unk_00[v0].unk_02 == v3)) {
            if (v1 < param1->unk_00[v0].unk_03) {
                param1->unk_3C = v0;
                return 1;
            } else {
                v1 -= param1->unk_00[v0].unk_03;
            }
        }
    }

    GF_ASSERT(0);
    return 0;
}

static void sub_02056624(FieldSystem *fieldSystem, FieldBattleDTO *param1, UnkStruct_020564B4 *param2)
{
    switch (param1->resultMask) {
    case BATTLE_RESULT_CAPTURED_MON:
        param2->unk_30[param2->unk_3C] = NumMonsCaptured(param2) + 1;
        break;
    case BATTLE_RESULT_PLAYER_FLED:
        break;
    default:
        GF_ASSERT(0);
    }
}

static FieldBattleDTO *sub_0205664C(FieldSystem *fieldSystem, UnkStruct_020564B4 *param1)
{
    FieldBattleDTO *v0;
    Pokemon *v1 = Pokemon_New(32);
    PalParkTransfer *v2 = SaveData_PalParkTransfer(fieldSystem->saveData);
    int parkBallCount = PalPark_GetParkBallCount(fieldSystem);

    v0 = FieldBattleDTO_NewPalPark(11, parkBallCount);

    FieldBattleDTO_Init(v0, fieldSystem);
    sub_0202F000(v2, param1->unk_3C, v1);
    FieldBattleDTO_AddPokemonToBattler(v0, v1, 1);
    Heap_FreeToHeap(v1);

    return v0;
}

static u32 CalculateCatchingPoints(UnkStruct_020564B4 *param0)
{
    int i;
    u32 catchingPoints = 0;

    for (i = 0; i < 6; i++) {
        catchingPoints += param0->unk_00[i].unk_04;
    }

    return catchingPoints;
}

static u32 CalculateTypePoints(UnkStruct_020564B4 *param0)
{
    int i, j;
    int typeToCheck1, typeToCheck2, typeAlreadyOwned1, typeAlreadyOwned2;
    u32 distinctTypeTracker = 0;
    u32 totalTypePoints = 0;

    for (i = 1; i < 6 + 1; i++) {
        for (j = 0; j < 6; j++) {
            if (param0->unk_30[j] == i) {
                typeAlreadyOwned1 = param0->unk_00[j].unk_06;
                typeAlreadyOwned2 = param0->unk_00[j].unk_07;

                if ((i != 1) && (typeToCheck1 != typeAlreadyOwned1) && (typeToCheck1 != typeAlreadyOwned2) && (typeToCheck2 != typeAlreadyOwned1) && (typeToCheck2 != typeAlreadyOwned2)) {
                    totalTypePoints += 200;
                }

                typeToCheck1 = typeAlreadyOwned1;
                typeToCheck2 = typeAlreadyOwned2;
                distinctTypeTracker |= (1 << typeToCheck1);
                distinctTypeTracker |= (1 << typeToCheck2);

                break;
            }
        }
    }

    for (; distinctTypeTracker != 0; distinctTypeTracker >>= 1) {
        if (distinctTypeTracker & 1) {
            totalTypePoints += 50;
        }
    }

    return totalTypePoints;
}

static u32 GetTimePoints(UnkStruct_020564B4 *param0)
{
    return param0->unk_48;
}
