#include "unk_020562F8.h"

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
static sub_020564B4(UnkStruct_020564B4 *param0);
static void sub_020564D0(UnkStruct_020564B4 *param0);
static BOOL sub_020564F4(UnkStruct_020564B4 *param0);
static u32 sub_020566AC(UnkStruct_020564B4 *param0);
static u32 sub_02056698(UnkStruct_020564B4 *param0);
static u32 sub_0205671C(UnkStruct_020564B4 *param0);

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

int sub_020563BC(FieldSystem *fieldSystem)
{
    return 6 - sub_020564B4(&Unk_021C07FC);
}

int sub_020563D0(FieldSystem *fieldSystem)
{
    return sub_02056698(&Unk_021C07FC);
}

int sub_020563E0(FieldSystem *fieldSystem)
{
    return sub_0205671C(&Unk_021C07FC);
}

int sub_020563F0(FieldSystem *fieldSystem)
{
    return sub_020566AC(&Unk_021C07FC);
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

static int sub_020564B4(UnkStruct_020564B4 *param0)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_30[v0] != 0) {
            v1++;
        }
    }

    return v1;
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
    u16 v0 = FieldSystem_GetTileAttributes(fieldSystem, param1, param2);
    int v1;

    v1 = (param1 < 32) ? 0 : 1;
    v1 += (param2 < 32) ? 0 : 2;

    if (sub_0205DAC8(v0)) {
        return 1 + v1;
    } else if (sub_0205DB58(v0)) {
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
        param2->unk_30[param2->unk_3C] = sub_020564B4(param2) + 1;
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
    int v3 = sub_020563BC(fieldSystem);

    v0 = FieldBattleDTO_NewPalPark(11, v3);

    FieldBattleDTO_Init(v0, fieldSystem);
    sub_0202F000(v2, param1->unk_3C, v1);
    FieldBattleDTO_AddPokemonToBattler(v0, v1, 1);
    Heap_FreeToHeap(v1);

    return v0;
}

static u32 sub_02056698(UnkStruct_020564B4 *param0)
{
    int v0;
    u32 v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        v1 += param0->unk_00[v0].unk_04;
    }

    return v1;
}

static u32 sub_020566AC(UnkStruct_020564B4 *param0)
{
    int v0, v1;
    int v2, v3, v4, v5;
    u32 v6 = 0;
    u32 v7 = 0;

    for (v0 = 1; v0 < 6 + 1; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (param0->unk_30[v1] == v0) {
                v4 = param0->unk_00[v1].unk_06;
                v5 = param0->unk_00[v1].unk_07;

                if ((v0 != 1) && (v2 != v4) && (v2 != v5) && (v3 != v4) && (v3 != v5)) {
                    v7 += 200;
                }

                v2 = v4;
                v3 = v5;
                v6 |= (1 << v2);
                v6 |= (1 << v3);

                break;
            }
        }
    }

    for (; v6 != 0; v6 >>= 1) {
        if (v6 & 1) {
            v7 += 50;
        }
    }

    return v7;
}

static u32 sub_0205671C(UnkStruct_020564B4 *param0)
{
    return param0->unk_48;
}
