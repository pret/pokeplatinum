#include "overlay104/ov104_022339B4.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_0202FF58.h"
#include "struct_defs/struct_020300F4.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_0223A7F4.h"
#include "overlay104/struct_ov104_02234130.h"
#include "overlay104/struct_ov104_0223ADA0.h"
#include "overlay104/struct_ov104_0224028C.h"

#include "game_records.h"
#include "heap.h"
#include "math_util.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "system_vars.h"
#include "unk_0202FF4C.h"
#include "unk_0203061C.h"
#include "unk_0205DFC4.h"
#include "vars_flags.h"

void ov104_02233B98(UnkStruct_ov104_0223ADA0 *param0, u16 param1);
static void ov104_02233BAC(UnkStruct_ov104_0223ADA0 *param0);
static void ov104_02233F1C(UnkStruct_ov104_0223ADA0 *param0);
void ov104_022340D0(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0223410C(UnkStruct_ov104_0223ADA0 *param0, void *param1);
u16 ov104_02234130(void *param0, u8 param1);
void ov104_0223449C(UnkStruct_ov104_0223ADA0 *param0);
void ov104_02234570(UnkStruct_ov104_0223ADA0 *param0);
void ov104_022346A4(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0223470C(UnkStruct_ov104_0223ADA0 *param0);
void ov104_02234790(UnkStruct_ov104_0223ADA0 *param0);
static void ov104_02233D80(UnkStruct_ov104_0223ADA0 *param0, u8 param1, u8 param2);
BOOL ov104_022347A4(UnkStruct_ov104_0223ADA0 *param0, u16 param1, u16 param2);
void ov104_02234148(UnkStruct_ov104_0223ADA0 *param0, u8 param1);
u16 ov104_02234430(UnkStruct_ov104_0223ADA0 *param0);
u16 ov104_0223443C(UnkStruct_ov104_0223ADA0 *param0);
u16 ov104_02234440(UnkStruct_ov104_0223ADA0 *param0, u8 param1);
void ov104_02234474(UnkStruct_ov104_0223ADA0 *param0);
void ov104_02234480(UnkStruct_ov104_0223ADA0 *param0);
u16 ov104_022347F8(UnkStruct_ov104_0223ADA0 *param0);

UnkStruct_ov104_0223ADA0 *ov104_022339B4(SaveData *saveData, u16 param1, u8 param2, u8 param3)
{
    UnkStruct_0202FF58 *v0;
    UnkStruct_020300F4 *v1;
    const UnkStruct_ov104_0224028C *v2;
    u8 v3;
    u16 v4, v5;
    u32 v6;
    static UnkStruct_ov104_0223ADA0 *v7;

    v7 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_0223ADA0));
    MI_CpuClear8(v7, sizeof(UnkStruct_ov104_0223ADA0));

    v7->unk_4F4 = sub_0202FF58(saveData);
    v7->saveData = saveData;
    v7->unk_00 = 11;
    v7->unk_4D4 = Party_New(HEAP_ID_FIELD2);
    v7->unk_4D8 = Party_New(HEAP_ID_FIELD2);

    v0 = v7->unk_4F4;
    v1 = sub_020300F4(saveData);

    if (param1 == 0) {
        v7->unk_04 = param2;
        v7->unk_05 = param3;
        v7->unk_06 = 0;

        sub_0202FF4C(v0);

        if (v7->unk_04 == 3) {
            if (v7->unk_05 == 0) {
                v6 = 102;
            } else {
                v6 = 104;
            }

            v3 = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(v7->saveData));
        } else {
            v3 = (u8)sub_020300E0(v1, 10, (v7->unk_05 * 4) + v7->unk_04, NULL);
        }

        if (v3 == 1) {
            v7->unk_0C = sub_02030698(SaveData_GetBattleFrontier(v7->saveData), sub_0205E430(v7->unk_05, v7->unk_04), sub_0205E6A8(sub_0205E430(v7->unk_05, v7->unk_04)));
            v7->unk_08 = sub_02030698(SaveData_GetBattleFrontier(v7->saveData), sub_0205E488(v7->unk_05, v7->unk_04), sub_0205E6A8(sub_0205E488(v7->unk_05, v7->unk_04)));
        } else {
            v7->unk_0C = 0;
            v7->unk_08 = 0;
        }

        v7->unk_10 = 0;
    } else {
        v7->unk_04 = (u8)sub_02030030(v0, 1, 0, NULL);
        v7->unk_05 = (u8)sub_02030030(v0, 0, 0, NULL);
        v7->unk_06 = (u8)sub_02030030(v0, 2, 0, NULL);
        v7->unk_0C = sub_02030698(SaveData_GetBattleFrontier(v7->saveData), sub_0205E430(v7->unk_05, v7->unk_04), sub_0205E6A8(sub_0205E430(v7->unk_05, v7->unk_04)));
        v7->unk_08 = sub_02030698(SaveData_GetBattleFrontier(v7->saveData), sub_0205E488(v7->unk_05, v7->unk_04), sub_0205E6A8(sub_0205E488(v7->unk_05, v7->unk_04)));
    }

    v7->unk_0E = (u16)(v7->unk_0C / 7);

    if (ov104_0223AED4(v7->unk_04) == 1) {
        ov104_0222E630(v7->saveData);
    }

    return v7;
}

void ov104_02233B98(UnkStruct_ov104_0223ADA0 *param0, u16 param1)
{
    if (param1 == 0) {
        ov104_02233BAC(param0);
    } else {
        ov104_02233F1C(param0);
    }

    return;
}

static void ov104_02233BAC(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0, v1;
    FrontierPokemonDataDTO v2[6 * 2];
    Pokemon *v4;
    u16 v5[6];
    u16 v6[6];

    ov104_0223A860(param0->unk_04, ov104_0223AF34(param0), param0->unk_18, (7 * 2));

    ov104_0223AAA0(ov104_0223AF34(param0), param0->unk_05, param0->unk_254, param0->unk_280, param0->unk_260, param0->unk_268, param0->unk_08, NULL, NULL);

    ov104_02233D80(param0, 4, 0);
    ov104_02233D80(param0, 5, 0);

    v1 = 6;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0] = param0->unk_280[v0];
    }

    if (ov104_0223AED4(param0->unk_04) == 1) {
        for (v0 = 0; v0 < 6; v0++) {
            v5[v0] = param0->unk_280[v0].species;
            v6[v0] = param0->unk_280[v0].item;
        }

        ov104_0223AAA0(ov104_0223AF34(param0), param0->unk_05, param0->unk_584, param0->unk_5B0, param0->unk_590, param0->unk_598, param0->unk_580, v5, v6);

        ov104_02233D80(param0, 4, 1);
        ov104_02233D80(param0, 5, 1);

        v1 = (6 * 2);

        for (v0 = 0; v0 < 6; v0++) {
            v2[v0 + 6] = param0->unk_5B0[v0];
        }
    }

    ov104_0223AB0C(ov104_0223AA74(param0->unk_04, 1), param0->unk_18[param0->unk_06], param0->unk_05, v2, param0->unk_3D2, param0->unk_3F0, param0->unk_3DA, param0->unk_3E0, v1);

    for (v0 = 0; v0 < 6; v0++) {
        v4 = Pokemon_New(HEAP_ID_FIELD2);
        ov104_0222DF40(&param0->unk_280[v0], v4, ov104_0223ADA0(param0));
        ov104_0222E1C0(param0->saveData, param0->unk_4D4, v4);
        Heap_Free(v4);
    }

    for (v0 = 0; v0 < 6; v0++) {
        v4 = Party_GetPokemonBySlotIndex(param0->unk_4D4, v0);
    }

    return;
}

static void ov104_02233D80(UnkStruct_ov104_0223ADA0 *param0, u8 param1, u8 param2)
{
    u16 v0;
    u16 v1;
    u8 v2;
    u32 v3;
    FrontierPokemonDataDTO v4;

    v0 = (LCRNG_Next() % 6);

    if (param2 == 0) {
        v1 = param0->unk_254[param1];
        v2 = param0->unk_260[param1];
        v3 = param0->unk_268[param1];
        v4 = param0->unk_280[param1];

        param0->unk_254[param1] = param0->unk_254[v0];
        param0->unk_260[param1] = param0->unk_260[v0];
        param0->unk_268[param1] = param0->unk_268[v0];
        param0->unk_280[param1] = param0->unk_280[v0];

        param0->unk_254[v0] = v1;
        param0->unk_260[v0] = v2;
        param0->unk_268[v0] = v3;
        param0->unk_280[v0] = v4;
    } else {
        v1 = param0->unk_584[param1];
        v2 = param0->unk_590[param1];
        v3 = param0->unk_598[param1];
        v4 = param0->unk_5B0[param1];

        param0->unk_584[param1] = param0->unk_584[v0];
        param0->unk_590[param1] = param0->unk_590[v0];
        param0->unk_598[param1] = param0->unk_598[v0];
        param0->unk_5B0[param1] = param0->unk_5B0[v0];

        param0->unk_584[v0] = v1;
        param0->unk_590[v0] = v2;
        param0->unk_598[v0] = v3;
        param0->unk_5B0[v0] = v4;
    }

    return;
}

static void ov104_02233F1C(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0;
    FrontierPokemonDataDTO v4[6];
    u8 v5[6];
    u16 v6[6];
    u32 v7[6];

    u8 v3 = ov104_0223AA50(param0->unk_04);

    for (v0 = 0; v0 < (7 * 2); v0++) {
        param0->unk_18[v0] = (u16)sub_02030030(param0->unk_4F4, 3, v0, NULL);
    }

    for (v0 = 0; v0 < 4; v0++) {
        v6[v0] = (u16)sub_02030030(param0->unk_4F4, 4, v0, NULL);
        v7[v0] = (u32)sub_02030030(param0->unk_4F4, 6, v0, NULL);
        v5[v0] = (u8)sub_02030030(param0->unk_4F4, 5, v0, NULL);

        param0->unk_4E8[v0] = v6[v0];
    }

    ov104_0222E330(v4, v6, v5, v7, NULL, 4, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    Pokemon *v1 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < 4; v0++) {
        ov104_0222DF40(&v4[v0], v1, ov104_0223ADA0(param0));
        ov104_0222E1C0(param0->saveData, param0->unk_4D4, v1);
    }

    Heap_Free(v1);

    for (v0 = 0; v0 < 4; v0++) {
        v6[v0] = (u16)sub_02030030(param0->unk_4F4, 7, v0, NULL);
        v7[v0] = (u32)sub_02030030(param0->unk_4F4, 9, v0, NULL);
        v5[v0] = (u8)sub_02030030(param0->unk_4F4, 8, v0, NULL);

        param0->unk_3D2[v0] = v6[v0];
    }

    ov104_0222E330(v4, v6, v5, v7, NULL, 4, 11, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    v1 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < 4; v0++) {
        ov104_0222DF40(&v4[v0], v1, ov104_0223ADA0(param0));
        ov104_0222E1C0(param0->saveData, param0->unk_4D8, v1);
    }

    Heap_Free(v1);

    return;
}

void ov104_022340D0(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    if (param0->unk_4D4 != NULL) {
        Heap_Free(param0->unk_4D4);
    }

    if (param0->unk_4D8 != NULL) {
        Heap_Free(param0->unk_4D8);
    }

    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223ADA0));

    Heap_Free(param0);
    param0 = NULL;

    return;
}

void ov104_0223410C(UnkStruct_ov104_0223ADA0 *param0, void *param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_4DC[v0] = ov104_02234130(param1, v0);
    }

    return;
}

u16 ov104_02234130(void *param0, u8 param1)
{
    UnkStruct_ov104_02234130 *v0 = param0;

    if (param1 >= 6) {
        GF_ASSERT(0);
        return 0;
    }

    return v0->unk_10[param1];
}

void ov104_02234148(UnkStruct_ov104_0223ADA0 *param0, u8 param1)
{
    u16 v0, v1, v2;
    u8 v3, v4;
    u8 v5[4];
    u16 v6[4];
    u32 v7[4];
    u32 v8, v9, v10;
    BattleFrontier *frontier;
    Pokemon *v12;
    UnkStruct_0202FF58 *v13 = param0->unk_4F4;
    UnkStruct_020300F4 *v14 = sub_020300F4(param0->saveData);

    frontier = SaveData_GetBattleFrontier(param0->saveData);
    v3 = ov104_0223AA50(param0->unk_04);
    v4 = ov104_0223AA74(param0->unk_04, 1);

    v5[0] = param0->unk_05;
    sub_0202FF84(param0->unk_4F4, 0, 0, v5);

    v5[0] = param0->unk_04;
    sub_0202FF84(param0->unk_4F4, 1, 0, v5);
    sub_0202FF70(param0->unk_4F4, 1);

    v5[0] = param0->unk_06;
    sub_0202FF84(param0->unk_4F4, 2, 0, v5);
    sub_020306E4(frontier, sub_0205E488(param0->unk_05, param0->unk_04), sub_0205E6A8(sub_0205E488(param0->unk_05, param0->unk_04)), param0->unk_08);
    sub_020306E4(frontier, sub_0205E430(param0->unk_05, param0->unk_04), sub_0205E6A8(sub_0205E430(param0->unk_05, param0->unk_04)), param0->unk_0C);

    if (param1 != 2) {
        v1 = sub_02030698(frontier, sub_0205E45C(param0->unk_05, param0->unk_04), sub_0205E6A8(sub_0205E45C(param0->unk_05, param0->unk_04)));
        v8 = sub_02030848(frontier, sub_0205E45C(param0->unk_05, param0->unk_04), sub_0205E6A8(sub_0205E45C(param0->unk_05, param0->unk_04)), param0->unk_0C);
        v2 = sub_02030698(frontier, sub_0205E45C(param0->unk_05, param0->unk_04), sub_0205E6A8(sub_0205E45C(param0->unk_05, param0->unk_04)));

        if (param0->unk_0C == v1) {
            sub_02030848(frontier, sub_0205E4B4(param0->unk_05, param0->unk_04), sub_0205E6A8(sub_0205E4B4(param0->unk_05, param0->unk_04)), param0->unk_08);
        } else if (v1 < v2) {
            sub_020306E4(frontier, sub_0205E4B4(param0->unk_05, param0->unk_04), sub_0205E6A8(sub_0205E4B4(param0->unk_05, param0->unk_04)), param0->unk_08);
        }

        v5[0] = param0->unk_0A;
        sub_020300B0(v14, 10, (param0->unk_05 * 4) + param0->unk_04, v5);

        if (param0->unk_04 == 3) {
            if (param0->unk_05 == 0) {
                v10 = 102;
            } else {
                v10 = 104;
            }

            sub_020306E4(frontier, v10, sub_0205E6A8(v10), param0->unk_0A);
        }
    }

    for (v0 = 0; v0 < (7 * 2); v0++) {
        v6[0] = param0->unk_18[v0];
        sub_0202FF84(param0->unk_4F4, 3, v0, v6);
    }

    v9 = Party_GetCurrentCount(param0->unk_4D4);

    for (v0 = 0; v0 < v9; v0++) {
        v12 = Party_GetPokemonBySlotIndex(param0->unk_4D4, v0);

        v6[0] = param0->unk_4E8[v0];
        sub_0202FF84(param0->unk_4F4, 4, v0, v6);

        v5[0] = Pokemon_GetValue(v12, MON_DATA_ATK_IV, NULL);
        sub_0202FF84(param0->unk_4F4, 5, v0, v5);

        v7[0] = Pokemon_GetValue(v12, MON_DATA_PERSONALITY, NULL);
        sub_0202FF84(param0->unk_4F4, 6, v0, v7);
    }

    v9 = Party_GetCurrentCount(param0->unk_4D8);

    for (v0 = 0; v0 < v9; v0++) {
        v12 = Party_GetPokemonBySlotIndex(param0->unk_4D8, v0);

        v6[0] = param0->unk_3D2[v0];
        sub_0202FF84(param0->unk_4F4, 7, v0, v6);

        v5[0] = Pokemon_GetValue(v12, MON_DATA_ATK_IV, NULL);
        sub_0202FF84(param0->unk_4F4, 8, v0, v5);

        v7[0] = Pokemon_GetValue(v12, MON_DATA_PERSONALITY, NULL);
        sub_0202FF84(param0->unk_4F4, 9, v0, v7);
    }

    return;
}

u16 ov104_02234430(UnkStruct_ov104_0223ADA0 *param0)
{
    param0->unk_06++;
    return param0->unk_06;
}

u16 ov104_0223443C(UnkStruct_ov104_0223ADA0 *param0)
{
    return param0->unk_06;
}

u16 ov104_02234440(UnkStruct_ov104_0223ADA0 *param0, u8 param1)
{
    FrontierTrainerDataDTO v0;
    u8 v2 = param0->unk_06 + (param1 * 7);

    Heap_Free(BattleTower_GetTrainerData(&v0, param0->unk_18[v2], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return ov104_0222E10C(v0.trainerType);
}

void ov104_02234474(UnkStruct_ov104_0223ADA0 *param0)
{
    ov104_02234148(param0, 1);
    return;
}

void ov104_02234480(UnkStruct_ov104_0223ADA0 *param0)
{
    param0->unk_0A = 1;

    if (param0->unk_0E < 8) {
        param0->unk_0E++;
    }

    param0->unk_06 = 0;
    ov104_02234148(param0, 0);

    return;
}

void ov104_0223449C(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0;
    u8 v1, v2;
    Pokemon *v3;
    const UnkStruct_ov104_0224028C *v4;

    v1 = ov104_0223AA50(param0->unk_04);
    v2 = ov104_0223AA74(param0->unk_04, 1);

    Party_Init(param0->unk_4D4);

    v3 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < v1; v0++) {
        ov104_0222DF40(&param0->unk_280[param0->unk_4DC[v0]], v3, ov104_0223ADA0(param0));
        ov104_0222E1C0(param0->saveData, param0->unk_4D4, v3);
        param0->unk_4E8[v0] = param0->unk_254[param0->unk_4DC[v0]];
    }

    for (v0 = 0; v0 < v2; v0++) {
        ov104_0222DF40(&param0->unk_3F0[v0], v3, ov104_0223ADA0(param0));
        ov104_0222E1C0(param0->saveData, param0->unk_4D8, v3);
    }

    Heap_Free(v3);

    return;
}

void ov104_02234570(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0, v1, v2;
    u8 v3;
    u16 v4[8];
    u16 v5[8];
    Pokemon *v6;
    const UnkStruct_ov104_0224028C *v7;

    for (v0 = 0; v0 < (4 + 4); v0++) {
        v4[v0] = 0;
        v5[v0] = 0;
    }

    v3 = ov104_0223AA74(param0->unk_04, 1);
    v1 = Party_GetCurrentCount(param0->unk_4D4);

    for (v0 = 0; v0 < v1; v0++) {
        v6 = Party_GetPokemonBySlotIndex(param0->unk_4D4, v0);
        v4[v0] = Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL);
        v5[v0] = Pokemon_GetValue(v6, MON_DATA_HELD_ITEM, NULL);
    }

    v2 = v1;
    v1 = Party_GetCurrentCount(param0->unk_4D8);

    for (v0 = 0; v0 < v1; v0++) {
        v6 = Party_GetPokemonBySlotIndex(param0->unk_4D8, v0);
        v4[v0 + v2] = Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL);
        v5[v0 + v2] = Pokemon_GetValue(v6, MON_DATA_HELD_ITEM, NULL);

        param0->unk_254[v0] = param0->unk_3D2[v0];
    }

    v7 = ov104_0223A8A8(param0->unk_18[param0->unk_06], param0->unk_05);

    ov104_0223A918(v4, v5, (v2 + v1), v3, param0->unk_3D2, 11, v7, 0, param0->unk_3DA);
    ov104_0222E330(param0->unk_3F0, param0->unk_3D2, param0->unk_3DA, NULL, param0->unk_3E0, v3, 11, 179);

    return;
}

void ov104_022346A4(UnkStruct_ov104_0223ADA0 *param0)
{
    Pokemon *v0;

    if (param0->unk_4DC[0] == 0xff) {
        (void)0;
    } else {
        v0 = Party_GetPokemonBySlotIndex(param0->unk_4D8, param0->unk_4DC[1]);
        Party_AddPokemonBySlotIndex(param0->unk_4D4, param0->unk_4DC[0], v0);

        param0->unk_4E8[param0->unk_4DC[0]] = param0->unk_254[param0->unk_4DC[1]];

        ov104_02234790(param0);
        GameRecords_IncrementRecordValue(SaveData_GetGameRecords(param0->saveData), RECORD_UNK_064);
    }

    return;
}

void ov104_0223470C(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0;
    u8 v1, v2;
    Pokemon *v3;
    int v4;

    v1 = ov104_0223AA50(param0->unk_04);
    v2 = ov104_0223AA74(param0->unk_04, 1);

    Party_Init(param0->unk_4D8);

    v3 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < v2; v0++) {
        ov104_0222DF40(&param0->unk_3F0[v0], v3, ov104_0223ADA0(param0));
        ov104_0222E1C0(param0->saveData, param0->unk_4D8, v3);
    }

    Heap_Free(v3);

    for (v0 = 0; v0 < v2; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_4D8, v0);
    }

    return;
}

void ov104_02234790(UnkStruct_ov104_0223ADA0 *param0)
{
    if (param0->unk_08 < 9999) {
        param0->unk_08++;
    }

    return;
}

BOOL ov104_022347A4(UnkStruct_ov104_0223ADA0 *param0, u16 param1, u16 param2)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = ov104_0222EEF8(param0);
        break;
    case 1:
        v0 = ov104_0222EF64(param0);
        break;
    case 2:
        v0 = ov104_0222EFCC(param0);
        break;
    case 3:
        v0 = ov104_0222F0B4(param0);
        break;
    case 4:
        v0 = ov104_0222F1A0(param0, param2);
        break;
    case 5:
        v0 = ov104_0222F1EC(param0, param2);
        break;
    case 6:
        v0 = ov104_0222F238(param0);
        break;
    }

    return v0;
}

u16 ov104_022347F8(UnkStruct_ov104_0223ADA0 *param0)
{
    u8 v0;
    u16 v1;
    static const u8 v2[8 + 1] = { 0, 5, 5, 5, 5, 7, 7, 8, 9 };
    static const u8 v3[8 + 1] = { 0, 10, 11, 12, 13, 16, 17, 19, 21 };

    v1 = param0->unk_0E;

    if ((param0->unk_04 == 0) || (param0->unk_04 == 1)) {
        if (v1 >= 8) {
            v0 = v2[8];
        } else {
            v0 = v2[v1];
        }
    } else {
        if (v1 >= 8) {
            v0 = v3[8];
        } else {
            v0 = v3[v1];
        }
    }

    if (param0->unk_04 == 0) {
        if ((param0->unk_0C == 21) || (param0->unk_0C == 49)) {
            v0 = 20;
        }
    }

    return v0;
}
