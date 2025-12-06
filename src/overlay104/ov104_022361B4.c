#include "overlay104/ov104_022361B4.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "generated/game_records.h"

#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_defs/battle_frontier.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_0223597C.h"
#include "overlay104/struct_ov104_0223BA10.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "game_records.h"
#include "heap.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_vars.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020302D0.h"
#include "unk_0203061C.h"
#include "unk_0205DFC4.h"
#include "vars_flags.h"

void ov104_02236514(UnkStruct_ov104_0223BA10 *param0, u16 param1);
static void ov104_02236528(UnkStruct_ov104_0223BA10 *param0);
static void ov104_022365F8(UnkStruct_ov104_0223BA10 *param0);
static void ov104_022366A4(UnkStruct_ov104_0223BA10 *param0);
void ov104_022367AC(UnkStruct_ov104_0223BA10 *param0);
void ov104_022367DC(UnkStruct_ov104_0223BA10 *param0, void *param1);
u16 ov104_02236834(void *param0, u8 param1);
void ov104_02236BF0(UnkStruct_ov104_0223BA10 *param0);
void ov104_02236BF8(UnkStruct_ov104_0223BA10 *param0);
void ov104_02236C50(UnkStruct_ov104_0223BA10 *param0);
int ov104_02236D10(UnkStruct_ov104_0223BA10 *param0);
BOOL ov104_02236F70(UnkStruct_ov104_0223BA10 *param0, u16 param1, u16 param2);
void ov104_02236FC0(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_0223BA10 *param1);
void ov104_022370E0(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_0223BA10 *param1);
void ov104_02237180(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_0223BA10 *param1);
static void ov104_022370C0(BgConfig *param0, Window *param1);
static void ov104_02237284(UnkStruct_ov104_022320B4 *param0, Window *param1, TrainerInfo *param2, u16 param3);
u16 ov104_02237338(UnkStruct_ov104_0223BA10 *param0);

UnkStruct_ov104_0223BA10 *ov104_022361B4(SaveData *saveData, u16 param1, u8 param2, u16 param3, u16 param4, u16 param5, u16 *param6)
{
    u32 v0, v1;
    Party *v2;
    Pokemon *v3;
    UnkStruct_020302DC *v4;
    u8 v5, v6;
    u16 v7, v8;
    static UnkStruct_ov104_0223BA10 *v9;
    UnkStruct_0203041C *v10;

    v9 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_0223BA10));
    MI_CpuClear8(v9, sizeof(UnkStruct_ov104_0223BA10));

    v9->unk_08 = sub_020302DC(saveData);
    v9->saveData = saveData;
    v9->unk_00 = 11;
    v9->unk_28 = Party_New(HEAP_ID_FIELD2);
    v9->unk_2C = Party_New(HEAP_ID_FIELD2);
    v9->unk_A20 = param6;

    v4 = v9->unk_08;
    v10 = sub_0203041C(saveData);

    if (param1 == 0) {
        v9->unk_10 = param2;
        v9->unk_11 = 0;

        sub_020302D0(v4);

        if (v9->unk_10 == 3) {
            v5 = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(v9->saveData));
        } else {
            v5 = (u8)sub_02030470(v10, 9, v9->unk_10, 0, NULL);
        }

        if (v5 == 1) {
            v9->unk_14 = sub_02030698(SaveData_GetBattleFrontier(v9->saveData), sub_0205E5E0(v9->unk_10), sub_0205E6A8(sub_0205E5E0(v9->unk_10)));
        } else {
            v9->unk_14 = 0;

            sub_020306E4(SaveData_GetBattleFrontier(v9->saveData), sub_0205E630(v9->unk_10), sub_0205E6A8(sub_0205E630(v9->unk_10)), 0);
            sub_020306E4(SaveData_GetBattleFrontier(v9->saveData), sub_0205E658(param2), sub_0205E6A8(sub_0205E658(param2)), 0);

            for (v7 = 0; v7 < 3; v7++) {
                sub_020306E4(SaveData_GetBattleFrontier(v9->saveData), sub_0205E5B4(v9->unk_10, v7), sub_0205E6A8(sub_0205E5B4(v9->unk_10, v7)), 1);
            }
        }

        v9->unk_16 = (u16)(v9->unk_14 / 7);
        v9->unk_18 = 0;
        v9->unk_24[0] = param3;
        v9->unk_24[1] = param4;
        v9->unk_24[2] = param5;
        v9->unk_20 = sub_02030698(SaveData_GetBattleFrontier(v9->saveData), sub_0205E630(v9->unk_10), sub_0205E6A8(sub_0205E630(v9->unk_10)));

        sub_02030804(SaveData_GetBattleFrontier(v9->saveData), sub_0205E630(v9->unk_10), sub_0205E6A8(sub_0205E630(v9->unk_10)), 10);
    } else {
        v9->unk_10 = (u8)sub_02030398(v4, 0, 0, 0, NULL);
        v9->unk_11 = (u8)sub_02030398(v4, 1, 0, 0, NULL);
        v9->unk_14 = sub_02030698(SaveData_GetBattleFrontier(v9->saveData), sub_0205E5E0(v9->unk_10), sub_0205E6A8(sub_0205E5E0(v9->unk_10)));
        v9->unk_16 = (u16)(v9->unk_14 / 7);

        for (v7 = 0; v7 < 3; v7++) {
            v9->unk_24[v7] = (u8)sub_02030398(v4, 7, v7, 0, NULL);
        }
    }

    for (v7 = 0; v7 < 3; v7++) {
        v3 = Party_GetPokemonBySlotIndex(SaveData_GetParty(v9->saveData), v9->unk_24[v7]);
        v9->unk_36A[v7] = Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL);
    }

    v2 = SaveData_GetParty(v9->saveData);
    v6 = ov104_0223B7A8(v9->unk_10, 0);

    for (v7 = 0; v7 < v6; v7++) {
        Party_AddPokemon(v9->unk_28, Party_GetPokemonBySlotIndex(v2, v9->unk_24[v7]));

        v3 = Party_GetPokemonBySlotIndex(v9->unk_28, v7);
        v0 = 0;

        Pokemon_SetValue(v3, MON_DATA_HELD_ITEM, &v0);

        if (Pokemon_GetValue(v3, MON_DATA_LEVEL, NULL) > 50) {
            v1 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL), 50);
            Pokemon_SetValue(v3, MON_DATA_EXPERIENCE, &v1);
            Pokemon_CalcLevelAndStats(v3);
        }
    }

    if (ov104_0223BA14(v9->unk_10) == 1) {
        ov104_0222E630(v9->saveData);
    }

    return v9;
}

void ov104_02236514(UnkStruct_ov104_0223BA10 *param0, u16 param1)
{
    if (param1 == 0) {
        ov104_02236528(param0);
    } else {
        ov104_022365F8(param0);
    }

    return;
}

static void ov104_02236528(UnkStruct_ov104_0223BA10 *param0)
{
    u8 v0 = Party_GetCurrentCount(param0->unk_28);

    for (int i = 0; i < v0; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(param0->unk_28, i);

        param0->unk_394[i][0] = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP, NULL);
        param0->unk_394[i][1] = Pokemon_GetValue(mon, MON_DATA_MOVE2_PP, NULL);
        param0->unk_394[i][2] = Pokemon_GetValue(mon, MON_DATA_MOVE3_PP, NULL);
        param0->unk_394[i][3] = Pokemon_GetValue(mon, MON_DATA_MOVE4_PP, NULL);
    }

    ov104_0223B760(param0->unk_10, ov104_0223BB60(param0), param0->unk_30, (7 * 2));

    ov104_0222E4BC(ov104_0223B7DC(param0->unk_10, 1), param0->unk_30[param0->unk_11], param0->unk_30[param0->unk_11 + 7], param0->unk_26C, param0->unk_288, param0->unk_274, param0->unk_278, ov104_0223BA14(param0->unk_10));

    return;
}

static void ov104_022365F8(UnkStruct_ov104_0223BA10 *param0)
{
    u16 v0;
    int v1;
    Pokemon *v2;
    u8 v3;
    FrontierPokemonDataDTO v4[6];
    u8 v5[6];
    u16 v6[6];
    u32 v7[6];

    ov104_022366A4(param0);

    for (v1 = 0; v1 < (7 * 2); v1++) {
        param0->unk_30[v1] = (u16)sub_02030398(param0->unk_08, 6, v1, 0, NULL);
    }

    for (v1 = 0; v1 < 4; v1++) {
        v6[v1] = (u16)sub_02030398(param0->unk_08, 8, v1, 0, NULL);
        param0->unk_26C[v1] = v6[v1];
    }

    ov104_0222E330(v4, v6, v5, NULL, v7, 4, 11, 179);

    v2 = Pokemon_New(HEAP_ID_FIELD2);

    for (v1 = 0; v1 < 4; v1++) {
        ov104_0222DF40(&v4[v1], v2, ov104_0223BA10(param0));
        ov104_0223BAA0(param0, param0->unk_2C, v2);
    }

    Heap_Free(v2);

    return;
}

static void ov104_022366A4(UnkStruct_ov104_0223BA10 *param0)
{
    u8 v0;
    u32 v1;
    u16 v2;
    u8 v3;
    int v4;
    Pokemon *v5;

    v0 = Party_GetCurrentCount(param0->unk_28);

    for (v4 = 0; v4 < v0; v4++) {
        v5 = Party_GetPokemonBySlotIndex(param0->unk_28, v4);

        v2 = (u16)sub_02030398(param0->unk_08, 2, v4, 0, NULL);
        Pokemon_SetValue(v5, MON_DATA_HP, &v2);

        v3 = (u8)sub_02030398(param0->unk_08, 3, v4, 0, NULL);
        Pokemon_SetValue(v5, MON_DATA_MOVE1_PP, &v3);

        v3 = (u8)sub_02030398(param0->unk_08, 3, v4, 1, NULL);
        Pokemon_SetValue(v5, MON_DATA_MOVE2_PP, &v3);

        v3 = (u8)sub_02030398(param0->unk_08, 3, v4, 2, NULL);
        Pokemon_SetValue(v5, MON_DATA_MOVE3_PP, &v3);

        v3 = (u8)sub_02030398(param0->unk_08, 3, v4, 3, NULL);
        Pokemon_SetValue(v5, MON_DATA_MOVE4_PP, &v3);

        v1 = (u32)sub_02030398(param0->unk_08, 4, v4, 0, NULL);
        Pokemon_SetValue(v5, MON_DATA_STATUS, &v1);

        v2 = (u16)sub_02030398(param0->unk_08, 5, v4, 0, NULL);
        Pokemon_SetValue(v5, MON_DATA_HELD_ITEM, &v2);
    }

    return;
}

void ov104_022367AC(UnkStruct_ov104_0223BA10 *param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    if (param0->unk_28 != NULL) {
        Heap_Free(param0->unk_28);
    }

    if (param0->unk_2C != NULL) {
        Heap_Free(param0->unk_2C);
    }

    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223BA10));
    Heap_Free(param0);

    param0 = NULL;

    return;
}

void ov104_022367DC(UnkStruct_ov104_0223BA10 *param0, void *param1)
{
    int v0;
    UnkStruct_ov104_0223597C *v1 = param1;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_380[v0] = ov104_02236834(param1, v0);
    }

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_370[v0] = v1->unk_08[v0];
        param0->unk_374[v0] = v1->unk_0C[v0];
        param0->unk_378[v0] = v1->unk_10[v0];
        param0->unk_37C[v0] = v1->unk_14[v0];
    }

    param0->unk_A1C = v1->unk_28;
    return;
}

u16 ov104_02236834(void *param0, u8 param1)
{
    UnkStruct_ov104_0223597C *v0 = param0;

    if (param1 >= 6) {
        GF_ASSERT(0);
        return 0;
    }

    return v0->unk_20;
}

void ov104_02236848(UnkStruct_ov104_0223BA10 *param0, u8 param1);
u16 ov104_02236B48(UnkStruct_ov104_0223BA10 *param0);
u16 ov104_02236B54(UnkStruct_ov104_0223BA10 *param0);
u16 ov104_02236B58(UnkStruct_ov104_0223BA10 *param0, u8 param1);
void ov104_02236B8C(UnkStruct_ov104_0223BA10 *param0);
void ov104_02236BD0(UnkStruct_ov104_0223BA10 *param0);

void ov104_02236848(UnkStruct_ov104_0223BA10 *param0, u8 param1)
{
    u16 v0, v1, v2;
    u8 v3;
    u8 v4[4];
    u16 v5[4];
    u32 v6[4];
    u32 v7, v8, v9;
    BattleFrontier *frontier;
    Pokemon *v11;
    UnkStruct_020302DC *v12 = param0->unk_08;
    UnkStruct_0203041C *v13 = sub_0203041C(param0->saveData);

    frontier = SaveData_GetBattleFrontier(param0->saveData);
    v3 = ov104_0223B7DC(param0->unk_10, 1);
    v4[0] = param0->unk_10;

    sub_02030308(param0->unk_08, 0, 0, 0, v4);
    sub_020302F4(param0->unk_08, 1);

    v4[0] = param0->unk_11;

    sub_02030308(param0->unk_08, 1, 0, 0, v4);
    sub_020306E4(frontier, sub_0205E5E0(param0->unk_10), sub_0205E6A8(sub_0205E5E0(param0->unk_10)), param0->unk_14);

    if (param1 != 2) {
        v1 = sub_02030698(frontier, sub_0205E608(param0->unk_10), sub_0205E6A8(sub_0205E608(param0->unk_10)));
        v7 = sub_02030848(frontier, sub_0205E608(param0->unk_10), sub_0205E6A8(sub_0205E608(param0->unk_10)), param0->unk_14);
        v2 = sub_02030698(frontier, sub_0205E608(param0->unk_10), sub_0205E6A8(sub_0205E608(param0->unk_10)));
        v9 = sub_02030698(frontier, sub_0205E630(param0->unk_10), sub_0205E6A8(sub_0205E630(param0->unk_10)));

        if (param0->unk_14 == v1) {
            sub_02030848(frontier, sub_0205E680(param0->unk_10), sub_0205E6A8(sub_0205E680(param0->unk_10)), v9);
        } else if (v1 < v2) {
            sub_020306E4(frontier, sub_0205E680(param0->unk_10), sub_0205E6A8(sub_0205E680(param0->unk_10)), v9);
        }

        v4[0] = param0->unk_27;
        sub_02030430(v13, 9, param0->unk_10, 0, v4);

        if (param0->unk_10 == 3) {
            sub_020306E4(frontier, 108, sub_0205E6A8(108), param0->unk_27);
        }
    }

    for (v0 = 0; v0 < (7 * 2); v0++) {
        v5[0] = param0->unk_30[v0];
        sub_02030308(param0->unk_08, 6, v0, 0, v5);
    }

    for (v0 = 0; v0 < 3; v0++) {
        v4[0] = param0->unk_24[v0];
        sub_02030308(param0->unk_08, 7, v0, 0, v4);
    }

    v8 = Party_GetCurrentCount(param0->unk_28);

    for (v0 = 0; v0 < v8; v0++) {
        v11 = Party_GetPokemonBySlotIndex(param0->unk_28, v0);

        v5[0] = Pokemon_GetValue(v11, MON_DATA_HP, NULL);
        sub_02030308(param0->unk_08, 2, v0, 0, v5);

        v4[0] = Pokemon_GetValue(v11, MON_DATA_MOVE1_PP, NULL);
        sub_02030308(param0->unk_08, 3, v0, 0, v4);

        v4[0] = Pokemon_GetValue(v11, MON_DATA_MOVE2_PP, NULL);
        sub_02030308(param0->unk_08, 3, v0, 1, v4);

        v4[0] = Pokemon_GetValue(v11, MON_DATA_MOVE3_PP, NULL);
        sub_02030308(param0->unk_08, 3, v0, 2, v4);

        v4[0] = Pokemon_GetValue(v11, MON_DATA_MOVE4_PP, NULL);
        sub_02030308(param0->unk_08, 3, v0, 3, v4);

        v6[0] = Pokemon_GetValue(v11, MON_DATA_STATUS, NULL);
        sub_02030308(param0->unk_08, 4, v0, 0, v6);

        v5[0] = Pokemon_GetValue(v11, MON_DATA_HELD_ITEM, NULL);
        sub_02030308(param0->unk_08, 5, v0, 0, v5);
    }

    v8 = Party_GetCurrentCount(param0->unk_2C);

    for (v0 = 0; v0 < v8; v0++) {
        v11 = Party_GetPokemonBySlotIndex(param0->unk_2C, v0);
        v5[0] = param0->unk_26C[v0];

        sub_02030308(param0->unk_08, 8, v0, 0, v5);
    }

    return;
}

u16 ov104_02236B48(UnkStruct_ov104_0223BA10 *param0)
{
    param0->unk_11++;
    return param0->unk_11;
}

u16 ov104_02236B54(UnkStruct_ov104_0223BA10 *param0)
{
    return param0->unk_11;
}

u16 ov104_02236B58(UnkStruct_ov104_0223BA10 *param0, u8 param1)
{
    FrontierTrainerDataDTO v0;
    u8 v2 = param0->unk_11 + (param1 * 7);

    Heap_Free(BattleTower_GetTrainerData(&v0, param0->unk_30[v2], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return ov104_0222E10C(v0.trainerType);
}

void ov104_02236B8C(UnkStruct_ov104_0223BA10 *param0)
{
    u16 v0[4];
    int v1;

    v0[0] = 1;

    for (v1 = 0; v1 < 3; v1++) {
        sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->unk_10, v1), sub_0205E6A8(sub_0205E5B4(param0->unk_10, v1)), 1);
    }

    ov104_02236848(param0, 1);

    return;
}

void ov104_02236BD0(UnkStruct_ov104_0223BA10 *param0)
{
    param0->unk_27 = 1;

    if (param0->unk_16 < 8) {
        param0->unk_16++;
    }

    param0->unk_11 = 0;
    ov104_02236848(param0, 0);

    return;
}

void ov104_02236BF0(UnkStruct_ov104_0223BA10 *param0)
{
    ov104_0223BAB8(param0);
    return;
}

void ov104_02236BF8(UnkStruct_ov104_0223BA10 *param0)
{
    int v0, v1, v2;

    ov104_0222E4BC(ov104_0223B7DC(param0->unk_10, 1), param0->unk_30[param0->unk_11], param0->unk_30[param0->unk_11 + 7], param0->unk_26C, param0->unk_288, param0->unk_274, param0->unk_278, ov104_0223BA14(param0->unk_10));

    for (v0 = 0; v0 < 4; v0++) {
        (void)0;
    }

    ov104_0223BAB8(param0);
    return;
}

void ov104_02236C50(UnkStruct_ov104_0223BA10 *param0)
{
    u8 v0, v1;
    int v2, v3;
    Pokemon *v4;

    if (CommSys_CurNetId() == 0) {
        v0 = 0;
    } else {
        v0 = 2;
    }

    v1 = ov104_0223B7A8(param0->unk_10, 0);
    v3 = Party_GetCurrentCount(param0->unk_28);

    for (v2 = v0; v2 < (v1 + v0); v2++) {
        v4 = Party_GetPokemonBySlotIndex(param0->unk_28, v2);

        param0->unk_394[v2 - v0][0] = Pokemon_GetValue(v4, MON_DATA_MOVE1_PP, NULL);
        param0->unk_394[v2 - v0][1] = Pokemon_GetValue(v4, MON_DATA_MOVE2_PP, NULL);
        param0->unk_394[v2 - v0][2] = Pokemon_GetValue(v4, MON_DATA_MOVE3_PP, NULL);
        param0->unk_394[v2 - v0][3] = Pokemon_GetValue(v4, MON_DATA_MOVE4_PP, NULL);
    }

    ov104_0223BA24(param0->unk_28);

    for (v2 = 0; v2 < 4; v2++) {
        param0->unk_370[v2] = 0;
        param0->unk_374[v2] = 0;
        param0->unk_378[v2] = 0;
        param0->unk_37C[v2] = 0;
    }

    return;
}

int ov104_02236D10(UnkStruct_ov104_0223BA10 *param0)
{
    u8 v0, v1, v2;
    u32 v3, v4;
    int v5, v6, v7, v8;
    Pokemon *v9;
    u8 v10[20];
    int v11 = 0;

    for (v5 = 0; v5 < 20; v5++) {
        v10[v5] = 0;
    }

    param0->unk_12 = 0;
    v8 = 0;

    if (CommSys_CurNetId() == 0) {
        v2 = 0;
    } else {
        v2 = 2;
    }

    v0 = ov104_0223B7A8(param0->unk_10, 0);
    v1 = ov104_0223B7DC(param0->unk_10, 1);

    for (v5 = v2; v5 < (v0 + v2); v5++) {
        v9 = Party_GetPokemonBySlotIndex(param0->unk_28, v5);

        if (Pokemon_GetValue(v9, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }

        v3 = Pokemon_GetValue(v9, MON_DATA_HP, NULL);
        v4 = Pokemon_GetValue(v9, MON_DATA_MAX_HP, NULL);

        if (v3 > 0) {
            v10[0]++;

            if (v3 == v4) {
                v10[1]++;
            } else {
                if (v3 >= (v4 / 2)) {
                    v10[2]++;
                } else {
                    v10[3]++;
                }
            }

            if (Pokemon_GetValue(v9, MON_DATA_STATUS, NULL) == 0) {
                v10[4]++;
            }
        } else {
            param0->unk_12 = 1;
        }

        v8 += Pokemon_GetValue(v9, MON_DATA_MOVE1_PP, NULL);
        v8 += Pokemon_GetValue(v9, MON_DATA_MOVE2_PP, NULL);
        v8 += Pokemon_GetValue(v9, MON_DATA_MOVE3_PP, NULL);
        v8 += Pokemon_GetValue(v9, MON_DATA_MOVE4_PP, NULL);
    }

    for (v5 = 0; v5 < v1; v5++) {
        if (param0->unk_374[v5] == 1) {
            v10[8]++;
        } else if (param0->unk_374[v5] == 2) {
            (void)0;
        }
    }

    v7 = 0;

    for (v5 = 0; v5 < v0; v5++) {
        for (v6 = 0; v6 < 4; v6++) {
            v7 += param0->unk_394[v5][v6];
        }
    }

    if ((v7 - v8) <= 5) {
        v10[5]++;
    } else if ((v7 - v8) <= 10) {
        v10[6]++;
    } else if ((v7 - v8) <= 15) {
        v10[7]++;
    }

    v11 += v10[0] * 3;
    v11 += v10[1] * 3;
    v11 += v10[2] * 2;
    v11 += v10[3] * 1;
    v11 += v10[4] * 1;
    v11 += v10[5] * 8;
    v11 += v10[6] * 6;
    v11 += v10[7] * 4;
    v11 += v10[8] * 7;

    if (v11 <= 0) {
        v11 = 1;
    }

    return v11;
}

void ov104_02236ED8(SaveData *saveData, u8 param1, int param2)
{
    u16 v0 = sub_02030698(SaveData_GetBattleFrontier(saveData), sub_0205E630(param1), sub_0205E6A8(sub_0205E630(param1)));

    if (v0 + param2 > 9999) {
        sub_020306E4(SaveData_GetBattleFrontier(saveData), sub_0205E630(param1), sub_0205E6A8(sub_0205E630(param1)), 9999);
    } else {
        sub_02030804(SaveData_GetBattleFrontier(saveData), sub_0205E630(param1), sub_0205E6A8(sub_0205E630(param1)), param2);
    }

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(saveData), RECORD_UNK_065, param2);
    return;
}

BOOL ov104_02236F70(UnkStruct_ov104_0223BA10 *param0, u16 param1, u16 param2)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = ov104_0222F3B8(param0);
        break;
    case 1:
        v0 = ov104_0222F44C(param0);
        break;
    case 2:
        v0 = ov104_0222F4B8(param0);
        break;
    case 3:
        v0 = ov104_0222F5D4(param0);
        break;
    case 4:
        v0 = ov104_0222F6C8(param0, param2);
        break;
    case 5:
        v0 = ov104_0222F710(param0, param2);
        break;
    case 6:
        v0 = ov104_0222F758(param0);
        break;
    }

    return v0;
}

void ov104_02236FC0(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_0223BA10 *param1)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(param0);

    GF_ASSERT(param0->unk_A8 == NULL);
    GF_ASSERT(param0->unk_AC == NULL);

    if (ov104_0223BA14(param1->unk_10) == 0) {
        param0->unk_A8 = Window_New(HEAP_ID_FIELD2, 1);
        Window_Add(v0->unk_00, param0->unk_A8, 1, 1, 1, 10, 4, 14, (((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4)));
        ov104_022370C0(v0->unk_00, param0->unk_A8);
    } else {
        param0->unk_A8 = Window_New(HEAP_ID_FIELD2, 1);
        param0->unk_AC = Window_New(HEAP_ID_FIELD2, 1);

        Window_Add(v0->unk_00, param0->unk_A8, 1, 1, 1, 10, 4, 14, (((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4)));
        Window_Add(v0->unk_00, param0->unk_AC, 1, 21, 1, 10, 4, 14, ((((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4)) - (10 * 4)));

        ov104_022370C0(v0->unk_00, param0->unk_A8);
        ov104_022370C0(v0->unk_00, param0->unk_AC);
    }

    ov104_02237180(param0, param1);
    return;
}

static void ov104_022370C0(BgConfig *param0, Window *param1)
{
    Window_DrawStandardFrame(param1, 1, ((1024 - (18 + 12)) - 9), 12);
    Window_FillTilemap(param1, 15);

    return;
}

void ov104_022370E0(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_0223BA10 *param1)
{
    Window *v0;
    Window *v1;

    if (ov104_0223BA14(param1->unk_10) == 0) {
        GF_ASSERT(param0->unk_A8 != NULL);
        v0 = param0->unk_A8;
        Window_EraseStandardFrame(v0, 0);
        Windows_Delete(v0, 1);
    } else {
        GF_ASSERT(param0->unk_A8 != NULL);
        GF_ASSERT(param0->unk_AC != NULL);

        if (CommSys_CurNetId() == 0) {
            v0 = param0->unk_A8;
            v1 = param0->unk_AC;
        } else {
            v0 = param0->unk_AC;
            v1 = param0->unk_A8;
        }

        Window_EraseStandardFrame(v0, 0);
        Windows_Delete(v0, 1);
        Window_EraseStandardFrame(v1, 0);
        Windows_Delete(v1, 1);
    }

    param0->unk_A8 = NULL;
    param0->unk_AC = NULL;

    return;
}

void ov104_02237180(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_0223BA10 *param1)
{
    u16 v0, v1;

    if (ov104_0223BA14(param1->unk_10) == 0) {
        GF_ASSERT(param0->unk_A8 != NULL);
        v0 = sub_02030698(SaveData_GetBattleFrontier(param1->saveData), sub_0205E630(param1->unk_10), sub_0205E6A8(sub_0205E630(param1->unk_10)));
        ov104_02237284(param0, param0->unk_A8, SaveData_GetTrainerInfo(param1->saveData), v0);
    } else {
        GF_ASSERT(param0->unk_A8 != NULL);
        GF_ASSERT(param0->unk_AC != NULL);

        if (CommSys_CurNetId() == 0) {
            v0 = sub_02030698(SaveData_GetBattleFrontier(param1->saveData), sub_0205E630(param1->unk_10), sub_0205E6A8(sub_0205E630(param1->unk_10)));
            v1 = param1->unk_A1C;
        } else {
            v0 = param1->unk_A1C;
            v1 = sub_02030698(SaveData_GetBattleFrontier(param1->saveData), sub_0205E630(param1->unk_10), sub_0205E6A8(sub_0205E630(param1->unk_10)));
        }

        ov104_02237284(param0, param0->unk_A8, CommInfo_TrainerInfo(0), v0);
        ov104_02237284(param0, param0->unk_AC, CommInfo_TrainerInfo(1), v1);
    }

    return;
}

static void ov104_02237284(UnkStruct_ov104_022320B4 *param0, Window *param1, TrainerInfo *param2, u16 param3)
{
    MessageLoader *v0;
    Strbuf *v1 = Strbuf_Init((10 * 2), param0->heapID);
    Strbuf *v2 = Strbuf_Init((10 * 2), param0->heapID);

    v0 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0199, HEAP_ID_FIELD2);

    StringTemplate_SetNumber(param0->unk_44, 0, param3, 4, 1, 1);
    MessageLoader_GetStrbuf(v0, 2, v1);

    StringTemplate_Format(param0->unk_44, v2, v1);
    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, 16, 2 * 8, TEXT_SPEED_NO_TRANSFER, NULL);
    StringTemplate_SetPlayerName(param0->unk_44, 0, param2);

    MessageLoader_GetStrbuf(v0, 0, v1);

    StringTemplate_Format(param0->unk_44, v2, v1);
    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_INSTANT, NULL);

    Strbuf_Free(v1);
    Strbuf_Free(v2);
    MessageLoader_Free(v0);

    Window_CopyToVRAM(param1);

    return;
}

u16 ov104_02237338(UnkStruct_ov104_0223BA10 *param0)
{
    u8 v0;
    u16 v1;
    static const u8 v2[8 + 1] = { 0, 3, 3, 4, 4, 5, 5, 7, 7 };
    static const u8 v3[8 + 1] = { 0, 8, 9, 11, 12, 14, 15, 18, 18 };

    v1 = param0->unk_16;

    if ((param0->unk_10 == 0) || (param0->unk_10 == 1)) {
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

    if (param0->unk_10 == 0) {
        if ((param0->unk_14 == 21) || (param0->unk_14 == 49)) {
            v0 = 20;
        }
    }

    return v0;
}
