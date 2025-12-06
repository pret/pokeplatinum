#include "overlay104/ov104_02234DB4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02030114_decl.h"
#include "struct_decls/struct_0203026C_decl.h"
#include "struct_defs/battle_frontier.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_0223AF58.h"
#include "overlay104/struct_ov104_02235208.h"
#include "overlay104/struct_ov104_0223B5C0.h"

#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "system_vars.h"
#include "unk_02030108.h"
#include "unk_0203061C.h"
#include "unk_02030880.h"
#include "unk_0205DFC4.h"
#include "vars_flags.h"

UnkStruct_ov104_0223B5C0 *ov104_02234DB4(SaveData *saveData, u16 param1, u8 param2, u8 param3, u8 param4);
void ov104_022350B0(UnkStruct_ov104_0223B5C0 *param0, u16 param1);
static void ov104_022350B8(UnkStruct_ov104_0223B5C0 *param0);
void ov104_02235190(UnkStruct_ov104_0223B5C0 *param0);
void ov104_022351CC(UnkStruct_ov104_0223B5C0 *param0, void *param1);
u16 ov104_02235208(void *param0, u8 param1);
void ov104_0223520C(UnkStruct_ov104_0223B5C0 *param0, u16 *param1);
BOOL ov104_02235534(UnkStruct_ov104_0223B5C0 *param0, u16 param1, u16 param2);
static u16 ov104_022355C0(SaveData *saveData, u8 param1, u8 param2, u16 *param3, u16 *param4);
static void ov104_02235620(SaveData *saveData, u8 param1, u8 param2, u8 param3);
void ov104_022356A0(UnkStruct_ov104_0223B5C0 *param0);
static u16 ov104_02235704(UnkStruct_ov104_0223B5C0 *param0);
void ov104_0223526C(UnkStruct_ov104_0223B5C0 *param0, u8 param1);
u16 ov104_022354B0(UnkStruct_ov104_0223B5C0 *param0);
u16 ov104_022354BC(UnkStruct_ov104_0223B5C0 *param0);
u16 ov104_022354C0(UnkStruct_ov104_0223B5C0 *param0, u8 param1);
void ov104_022354F4(UnkStruct_ov104_0223B5C0 *param0);
void ov104_02235518(UnkStruct_ov104_0223B5C0 *param0);
u16 ov104_02235578(UnkStruct_ov104_0223B5C0 *param0);

UnkStruct_ov104_0223B5C0 *ov104_02234DB4(SaveData *saveData, u16 param1, u8 param2, u8 param3, u8 param4)
{
    UnkStruct_02030114 *v0;
    UnkStruct_0203026C *v1;
    u8 v2, v3, v4;
    u16 v5, v6, v7, v8;
    Pokemon *v9;
    static UnkStruct_ov104_0223B5C0 *v10;

    v10 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov104_0223B5C0));
    MI_CpuClear8(v10, sizeof(UnkStruct_ov104_0223B5C0));

    v10->unk_6F8 = sub_02030114(saveData);
    v10->saveData = saveData;
    v10->unk_00 = 11;
    v10->unk_264 = Party_New(HEAP_ID_FIELD2);
    v10->unk_D8C = Pokemon_New(HEAP_ID_FIELD2);

    v0 = v10->unk_6F8;
    v1 = sub_0203026C(saveData);

    if (param1 == 0) {
        v10->unk_04 = param2;
        v4 = ov104_0223B500(v10->unk_04);
        v10->unk_05 = 0;

        sub_02030108(v0);

        if (v10->unk_04 == 3) {
            v2 = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(v10->saveData));
        } else {
            v2 = (u8)sub_020302B4(v1, 5, v10->unk_04, 0, NULL);
        }

        if (v2 == 1) {
            v10->unk_08 = sub_02030698(SaveData_GetBattleFrontier(v10->saveData), sub_0205E50C(v10->unk_04), sub_0205E6A8(sub_0205E50C(v10->unk_04)));
        } else {
            v10->unk_08 = 0;

            for (v5 = 0; v5 < 18; v5++) {
                ov104_02235620(v10->saveData, v10->unk_04, v5, 0);
            }
        }

        v10->unk_260[0] = param3;
        v10->unk_260[1] = param4;
    } else {
        v10->unk_04 = (u8)sub_02030198(v0, 0, 0, 0, NULL);
        v4 = ov104_0223B500(v10->unk_04);
        v10->unk_05 = (u8)sub_02030198(v0, 1, 0, 0, NULL);
        v10->unk_08 = sub_02030698(SaveData_GetBattleFrontier(v10->saveData), sub_0205E50C(v10->unk_04), sub_0205E6A8(sub_0205E50C(v10->unk_04)));

        for (v5 = 0; v5 < v4; v5++) {
            v10->unk_260[v5] = (u8)sub_02030198(v0, 3, v5, 0, NULL);
        }

        for (v5 = 0; v5 < (10 * 2); v5++) {
            v10->unk_18[v5] = (u16)sub_02030198(v0, 2, v5, 0, NULL);
        }

        for (v5 = 0; v5 < (10 * 2); v5++) {
            v10->unk_268[v5] = (u8)sub_02030198(v0, 4, v5, 0, NULL);
        }
    }

    for (v5 = 0; v5 < v4; v5++) {
        v9 = Party_GetPokemonBySlotIndex(SaveData_GetParty(v10->saveData), v10->unk_260[v5]);
        v10->unk_728[v5] = Pokemon_GetValue(v9, MON_DATA_HELD_ITEM, NULL);
    }

    v10->unk_10 = 0;
    v10->unk_0A = (u16)(v10->unk_08 / 10);

    if (v10->unk_04 == 2) {
        for (v5 = 0; v5 < 18; v5++) {
            sub_02030204(v5, &v10->unk_704[2][0], (10 - 1));
        }
    } else {
        for (v5 = 0; v5 < 18; v5++) {
            v8 = ov104_022355C0(saveData, v10->unk_04, v5, &v6, &v7);

            sub_02030204(v5, &v10->unk_704[v10->unk_04][0], v8);
        }
    }

    if (ov104_0223B5B0(v10->unk_04) == 1) {
        ov104_0222E630(v10->saveData);
    }

    return v10;
}

void ov104_022350B0(UnkStruct_ov104_0223B5C0 *param0, u16 param1)
{
    if (param1 == 0) {
        ov104_022350B8(param0);
    } else {
        ov104_022350B8(param0);
    }

    return;
}

static void ov104_022350B8(UnkStruct_ov104_0223B5C0 *param0)
{
    u8 v0, v1, v2, v3;
    int v4, v5;
    Pokemon *v6;

    v3 = 0;
    v1 = 1;

    if (param0->unk_04 != 0) {
        v1 = 2;
    }

    v0 = sub_020301E0(param0->unk_6F5, &param0->unk_704[param0->unk_04][0]);
    param0->unk_07 = ov104_02235704(param0);

    ov104_0223AF58(param0->unk_6F5, v1, v0, param0->unk_05, param0->unk_18);
    ov104_0223AFB4(param0->unk_04, v1, param0->unk_0A, v0, param0->unk_05, param0->unk_18);

    v2 = (param0->unk_05 * 2);

    if ((param0->unk_18[v2] == 307) || (param0->unk_18[v2] == 308)) {
        v5 = ov104_0223B5C0(param0);
        v0 = v5;
    }

    if (param0->unk_18[v2] == 307) {
        v3 = 1;
    }

    if (param0->unk_18[v2] == 308) {
        v3 = 2;
    }

    v6 = Party_GetPokemonBySlotIndex(param0->unk_264, 0);
    ov104_0223B0C8(1, param0->unk_6F4, v0, param0->unk_05, Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL), param0->unk_268, v3);

    return;
}

void ov104_02235190(UnkStruct_ov104_0223B5C0 *param0)
{
    if (param0 == NULL) {
        return;
    }

    if (param0->unk_264 != NULL) {
        Heap_Free(param0->unk_264);
    }

    if (param0->unk_D8C != NULL) {
        Heap_Free(param0->unk_D8C);
    }

    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223B5C0));

    Heap_Free(param0);
    param0 = NULL;

    return;
}

void ov104_022351CC(UnkStruct_ov104_0223B5C0 *param0, void *param1)
{
    int v0;

    param0->unk_6F2 = ov104_02235208(param1, 0);
    param0->unk_6F5 = param0->unk_6F2;
    param0->unk_6F4 = ov104_0223B5A4(param0->unk_6F2);

    if (param0->unk_6F5 >= 17) {
        param0->unk_6F5 = 18 - 1;
    }

    return;
}

u16 ov104_02235208(void *param0, u8 param1)
{
    UnkStruct_ov104_02235208 *v0 = param0;
    return v0->unk_06;
}

void ov104_0223520C(UnkStruct_ov104_0223B5C0 *param0, u16 *param1)
{
    int v0;
    int v1;

    if (param0->unk_04 != 3) {
        *param1 = sub_020309A0(param0->saveData, sub_0205E534(param0->unk_04), sub_0205E55C(param0->unk_04), sub_0205E6A8(sub_0205E534(param0->unk_04)), sub_0205E584(param0->unk_04), 11, &v0, &v1);
    } else {
        *param1 = 0;
    }

    return;
}

void ov104_0223526C(UnkStruct_ov104_0223B5C0 *param0, u8 param1)
{
    u16 v0;
    u8 v1[4];
    u16 v2[4];
    u32 v3[4];
    BattleFrontier *frontier;
    u16 v5, v6, v7, v8, v9;
    Pokemon *v10;
    UnkStruct_02030114 *v11 = param0->unk_6F8;
    UnkStruct_0203026C *v12 = sub_0203026C(param0->saveData);

    frontier = SaveData_GetBattleFrontier(param0->saveData);
    v1[0] = param0->unk_04;

    sub_02030140(param0->unk_6F8, 0, 0, 0, v1);
    sub_0203012C(param0->unk_6F8, 1);

    v10 = Party_GetPokemonBySlotIndex(SaveData_GetParty(param0->saveData), param0->unk_260[0]);
    v9 = Pokemon_GetValue(v10, MON_DATA_SPECIES, NULL);
    v8 = sub_02030698(frontier, sub_0205E55C(param0->unk_04), sub_0205E6A8(sub_0205E55C(param0->unk_04)));
    v1[0] = param0->unk_05;

    sub_02030140(param0->unk_6F8, 1, 0, 0, v1);
    sub_020306E4(frontier, sub_0205E50C(param0->unk_04), sub_0205E6A8(sub_0205E50C(param0->unk_04)), param0->unk_08);

    if (param1 != 2) {
        if (param0->unk_04 != 3) {
            sub_020306E4(frontier, sub_0205E534(param0->unk_04), sub_0205E6A8(sub_0205E534(param0->unk_04)), param0->unk_08);
        } else {
            if (v8 != v9) {
                sub_020306E4(frontier, sub_0205E534(param0->unk_04), sub_0205E6A8(sub_0205E534(param0->unk_04)), param0->unk_08);
            } else {
                sub_02030848(frontier, sub_0205E534(param0->unk_04), sub_0205E6A8(sub_0205E534(param0->unk_04)), param0->unk_08);
            }
        }

        v1[0] = param0->unk_06;
        sub_02030280(v12, 5, param0->unk_04, 0, v1);

        if (param0->unk_04 == 3) {
            sub_020306E4(frontier, 106, sub_0205E6A8(106), param0->unk_06);
        }
    }

    for (v0 = 0; v0 < (10 * 2); v0++) {
        v2[0] = param0->unk_18[v0];
        sub_02030140(param0->unk_6F8, 2, v0, 0, v2);
    }

    for (v0 = 0; v0 < 2; v0++) {
        v1[0] = param0->unk_260[v0];
        sub_02030140(param0->unk_6F8, 3, v0, 0, v1);
    }

    for (v0 = 0; v0 < 18; v0++) {
        v1[0] = sub_020301E0(v0, &param0->unk_704[param0->unk_04][0]);
        ov104_02235620(param0->saveData, param0->unk_04, v0, v1[0]);
    }

    for (v0 = 0; v0 < (10 * 2); v0++) {
        v2[0] = param0->unk_268[v0];
        sub_02030140(param0->unk_6F8, 4, v0, 0, v2);
    }

    sub_020306E4(frontier, sub_0205E55C(param0->unk_04), sub_0205E6A8(sub_0205E55C(param0->unk_04)), Pokemon_GetValue(v10, MON_DATA_SPECIES, NULL));
    return;
}

u16 ov104_022354B0(UnkStruct_ov104_0223B5C0 *param0)
{
    param0->unk_05++;
    return param0->unk_05;
}

u16 ov104_022354BC(UnkStruct_ov104_0223B5C0 *param0)
{
    return param0->unk_05;
}

u16 ov104_022354C0(UnkStruct_ov104_0223B5C0 *param0, u8 param1)
{
    FrontierTrainerDataDTO v0;
    u8 v2 = (param0->unk_05 * 2) + param1;

    Heap_Free(BattleTower_GetTrainerData(&v0, param0->unk_18[v2], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return ov104_0222E10C(v0.trainerType);
}

void ov104_022354F4(UnkStruct_ov104_0223B5C0 *param0)
{
    int v0;

    sub_02030244(&param0->unk_704[param0->unk_04][0]);
    ov104_0223526C(param0, 1);

    return;
}

void ov104_02235518(UnkStruct_ov104_0223B5C0 *param0)
{
    Pokemon *v0;

    param0->unk_06 = 1;

    if (param0->unk_0A < 18) {
        param0->unk_0A++;
    }

    param0->unk_05 = 0;
    ov104_0223526C(param0, 0);

    return;
}

BOOL ov104_02235534(UnkStruct_ov104_0223B5C0 *param0, u16 param1, u16 param2)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = ov104_0222ED00(param0);
        break;
    case 1:
        v0 = ov104_0222ED44(param0);
        break;
    case 2:
        v0 = ov104_0222EDA8(param0);
        break;
    case 3:
        v0 = ov104_0222EE14(param0, param2);
        break;
    case 7:
        v0 = ov104_0222EE60(param0);
        break;
    }

    return v0;
}

u16 ov104_02235578(UnkStruct_ov104_0223B5C0 *param0)
{
    u8 v0;
    static const u8 v1[18 + 1] = { 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 6, 6, 8, 8, 10, 10, 12 };
    static const u8 v2[18 + 1] = { 0, 6, 6, 6, 8, 8, 8, 10, 10, 10, 12, 12, 14, 15, 17, 17, 20, 20, 23 };

    if ((param0->unk_04 == 0) || (param0->unk_04 == 1)) {
        if (param0->unk_0A >= 18) {
            v0 = v1[18];
        } else {
            v0 = v1[param0->unk_0A];
        }
    } else {
        if (param0->unk_0A >= 18) {
            v0 = v2[18];
        } else {
            v0 = v2[param0->unk_0A];
        }
    }

    if (param0->unk_04 == 0) {
        if ((param0->unk_08 == 50) || (param0->unk_08 == 170)) {
            v0 = 20;
        }
    } else if (param0->unk_04 == 2) {
        v0 = 12;
    }

    return v0;
}

static u16 ov104_022355C0(SaveData *saveData, u8 param1, u8 param2, u16 *param3, u16 *param4)
{
    u16 v0 = sub_02030698(SaveData_GetBattleFrontier(saveData), sub_0205E4E0(param1, param2), sub_0205E6A8(sub_0205E4E0(param1, param2)));
    v0 &= 0xff;

    *param3 = (v0 & 0xf);
    *param4 = (v0 >> 4);

    if ((param2 % 2) == 0) {
        return *param3;
    } else {
        return *param4;
    }
}

static void ov104_02235620(SaveData *saveData, u8 param1, u8 param2, u8 param3)
{
    u8 v0;
    u8 v1;
    u8 v2, v3;
    u16 v4, v5;

    ov104_022355C0(saveData, param1, param2, &v4, &v5);

    v3 = ((v5 << 4) | v4);
    v0 = (param2 / 2);
    v1 = (param2 % 2);

    if (v1 == 0) {
        v3 = v3 & 0xf0;
    } else {
        v3 = v3 & 0xf;
    }

    v2 = (param3 << (4 * v1));
    v3 |= v2;

    sub_020306E4(SaveData_GetBattleFrontier(saveData), sub_0205E4E0(param1, param2), sub_0205E6A8(sub_0205E4E0(param1, param2)), v3);
    return;
}

void ov104_022356A0(UnkStruct_ov104_0223B5C0 *param0)
{
    u8 v0;
    int v1;

    if (param0->unk_04 != 2) {
        for (v1 = 0; v1 < (18 - 1); v1++) {
            v0 = sub_020301E0(v1, &param0->unk_704[param0->unk_04][0]);

            if (v0 < 10) {
                break;
            }
        }

        if (v1 == (18 - 1)) {
            for (v1 = 0; v1 < (18 - 1); v1++) {
                sub_02030204(v1, &param0->unk_704[param0->unk_04][0], (10 - 1));
            }
        }
    }

    return;
}

void ov104_022356F4(UnkStruct_ov104_0223B5C0 *param0)
{
    int v0 = ov104_0223B64C(param0);
    param0->unk_0C = ov104_0223B6C4(v0);

    return;
}

static u16 ov104_02235704(UnkStruct_ov104_0223B5C0 *param0)
{
    fx32 v0, v1;
    int v2, v3;
    int v4;
    u8 v5;
    float v6, v7;

    v5 = sub_020301E0(param0->unk_6F5, &param0->unk_704[param0->unk_04][0]);
    v2 = ov104_0223B64C(param0);

    if (param0->unk_04 == 2) {
        return v2;
    }

    v0 = (FX32_CONST(v2) - (param0->unk_0C * 3));
    v6 = (FX_FX32_TO_F32(param0->unk_0C) * 5.0);

    if ((v2 / v6) < 1.0) {
        v6 = 1.0;
        v6 = (float)(v5 + 1 - 1);
    } else {
        v1 = FX32_CONST((v5 + 1 - 1) * v2);
        v6 = (FX_FX32_TO_F32(v1) / v6);
    }

    v7 = 0.0;

    for (v3 = 0; v3 < 18; v3++) {
        if (v3 == param0->unk_6F5) {
            v7 += 1.0;
        } else {
            if (sub_020301E0(v3, &param0->unk_704[param0->unk_04][0]) > 0) {
                v7 += 1.0;
            }
        }
    }

    if (v7 != 0.0) {
        v7 -= 1.0;
    }

    v7 *= 0.5;

    v6 = (FX_FX32_TO_F32(v0) + v6 + v7);
    v4 = (int)(v6);

    if (v6 != (int)v6) {
        v4++;
    }

    if (v4 > v2) {
        v4 = v2;
    }

    if (v4 > 100) {
        v4 = 100;
    }

    return v4;
}
