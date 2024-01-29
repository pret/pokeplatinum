#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_0202BE38.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"
#include "overlay006/battle_params.h"

#include "unk_020041CC.h"
#include "heap.h"
#include "savedata/save_table.h"
#include "unk_02025E08.h"
#include "unk_02026150.h"
#include "unk_0202B604.h"
#include "unk_0202CD50.h"
#include "unk_0202F1D4.h"
#include "unk_020329E0.h"
#include "unk_0203A6DC.h"
#include "unk_0203D1B8.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_02050A74.h"
#include "enc_effects.h"
#include "unk_02051D8C.h"
#include "unk_020528D0.h"
#include "unk_020530C8.h"
#include "unk_0205578C.h"
#include "unk_02055808.h"
#include "unk_020562F8.h"
#include "unk_0205964C.h"
#include "unk_02061804.h"
#include "unk_0206940C.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "pokemon.h"
#include "trainer_data.h"
#include "unk_020797C8.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_02096420.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/ov6_02246034.h"

typedef struct {
    int * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    BattleParams * unk_10;
} UnkStruct_02050ACC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int * unk_0C;
    BattleParams * unk_10;
} UnkStruct_02050DD4;

static void sub_020518B0(UnkStruct_0203CDB0 * param0, BattleParams * param1);
static void sub_02051988(UnkStruct_0203CDB0 * param0, BattleParams * param1);
static BOOL sub_02050EE0(UnkStruct_020508D4 * param0);
static BOOL sub_02051074(UnkStruct_020508D4 * param0);

static BOOL sub_02050A74 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    BattleParams * v1 = sub_02050A64(param0);
    int * v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_0203D1D4(v0, v1);
        (*v2)++;
        break;
    case 1:
        if (sub_020509B4(v0)) {
            break;
        }

        return 1;
    }

    return 0;
}

void sub_02050ABC (UnkStruct_020508D4 * param0, BattleParams * param1)
{
    sub_02050944(param0, sub_02050A74, param1);
}

static UnkStruct_02050ACC * sub_02050ACC (BattleParams * param0, int param1, int param2, int * param3)
{
    UnkStruct_02050ACC * v0;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02050ACC));
    v0->unk_00 = param3;

    if (param3 != NULL) {
        *param3 = 0;
    }

    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = param0;

    return v0;
}

static void sub_02050AF0 (UnkStruct_02050ACC * param0)
{
    sub_020520A4(param0->unk_10);
    Heap_FreeToHeap(param0);
}

static BOOL sub_02050B04 (UnkStruct_02050ACC * param0)
{
    BOOL v0;

    if (param0->unk_00 != NULL) {
        *(param0->unk_00) = param0->unk_10->unk_14;
    }

    v0 = sub_02052868(param0->unk_10->unk_14);
    return v0;
}

static void sub_02050B1C (const BattleParams * param0, UnkStruct_0203CDB0 * param1)
{
    if (param0->battleType & BATTLE_TYPE_DEBUG) {
        return;
    }

    sub_020526E8(param0, param1);
}

static BOOL sub_02050B30 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_02050ACC * v1;
    int * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_02062C48(v0->unk_38);
        sub_020557DC(param0, v1->unk_04, v1->unk_08);
        (*v2)++;
        break;
    case 1:
        sub_02055820(param0);
        (*v2)++;
        break;
    case 2:
        sub_02050ABC(param0, v1->unk_10);
        (*v2)++;
        break;
    case 3:
        sub_02050B1C(v1->unk_10, v0);

        if ((v1->unk_10->battleType == BATTLE_TYPE_WILD_MON)
                || (v1->unk_10->battleType == BATTLE_TYPE_ROAMER)
                || (v1->unk_10->battleType == BATTLE_TYPE_AI_PARTNER)) {
            sub_0206D1B8(v0, v1->unk_10->unk_10C, v1->unk_10->unk_14);
        }

        if (sub_02050B04(v1) == 0) {
            sub_02050AF0(v1);
            return 1;
        }

        if (sub_0206A984(sub_020507E4(v0->unk_0C))) {
            HealAllPokemonInParty(Party_GetFromSavedata(v0->unk_0C));
        }

        sub_020518B0(v0, v1->unk_10);
        sub_02051988(v0, v1->unk_10);
        sub_0206B48C(sub_020507E4(v0->unk_0C), v1->unk_10->unk_18C);
        sub_02055868(param0);
        (*v2)++;
        break;
    case 4:
        sub_02062C78(v0->unk_38);
        sub_020558F0(param0);
        (*v2)++;
        break;
    case 5:
        sub_02050AF0(v1);
        return 1;
        break;
    }

    return 0;
}

static void sub_02050C4C (UnkStruct_020508D4 * param0, BattleParams * param1, int param2, int param3, int * param4)
{
    UnkStruct_02050ACC * v0;

    v0 = sub_02050ACC(param1, param2, param3, param4);
    sub_02050944(param0, sub_02050B30, v0);
}

static void sub_02050C6C (int param0, UnkStruct_0203CDB0 * param1)
{
    switch (param0 & 0xf) {
    case 0x1:
    case 0x6:
        sub_020331B4(param1->unk_0C, 1);
        break;
    case 0x2:
    case 0x5:
        sub_020331B4(param1->unk_0C, -1);
        break;
    }
}

static BOOL sub_02050CA8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_02050ACC * v1;
    int * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_020557DC(param0, v1->unk_04, v1->unk_08);
        (*v2)++;
        break;
    case 1:
        sub_02055820(param0);
        (*v2)++;
        break;
    case 2:
        sub_02050ABC(param0, v1->unk_10);
        (*v2)++;
        break;
    case 3:
        sub_02050C6C(v1->unk_10->unk_14, v0);
        sub_02052754(v1->unk_10, v0);

        {
            UnkStruct_0202CD88 * v3 = sub_0202CD88(v0->unk_0C);
            sub_0202CFEC(v3, 21);
        }

        sub_02055868(param0);
        (*v2)++;
        break;
    case 4:
    case 5:
        sub_02050AF0(v1);
        return 1;
        break;
    }

    return 0;
}

static BOOL sub_02050D4C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_02050ACC * v1;
    int * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_02004234(0);
        sub_02004550(5, v1->unk_08, 1);
        sub_02050ABC(param0, v1->unk_10);
        (*v2)++;
        break;
    case 1:
    {
        sub_02050C6C(v1->unk_10->unk_14, v0);
        sub_02052754(v1->unk_10, v0);
    }
        {
            UnkStruct_0202CD88 * v3 = sub_0202CD88(v0->unk_0C);
            sub_0202CFEC(v3, 21);
        }
        (*v2)++;
        break;
    case 2:
        sub_02050AF0(v1);
        sub_0202F22C();
        return 1;
        break;
    }

    return 0;
}

static UnkStruct_02050DD4 * sub_02050DD4 (BattleParams * param0, int param1, int param2, int * param3)
{
    UnkStruct_02050DD4 * v0;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02050DD4));
    v0->unk_0C = param3;

    if (param3 != NULL) {
        *param3 = 0;
    }

    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = param0;
    v0->unk_00 = 0;

    return v0;
}

static void sub_02050DFC (UnkStruct_02050DD4 * param0)
{
    sub_020520A4(param0->unk_10);
    Heap_FreeToHeap(param0);
}

void sub_02050E10 (UnkStruct_0203CDB0 * param0, BattleParams * param1)
{
    if (sub_0206AE5C(sub_020507E4(param0->unk_0C))) {
        UnkStruct_02050ACC * v0;

        v0 = sub_02050ACC(param1, EncEffects_CutInEffect(param1), EncEffects_BGM(param1), NULL);
        sub_02050904(param0, sub_02051074, v0);
    } else {
        UnkStruct_02050DD4 * v1;

        v1 = sub_02050DD4(param1, EncEffects_CutInEffect(param1), EncEffects_BGM(param1), NULL);
        sub_02050904(param0, sub_02050EE0, v1);
    }
}

void sub_02050E78 (UnkStruct_0203CDB0 * param0, UnkStruct_020508D4 * param1, BattleParams * param2)
{
    if (sub_0206AE5C(sub_020507E4(param0->unk_0C))) {
        UnkStruct_02050ACC * v0;

        v0 = sub_02050ACC(param2, EncEffects_CutInEffect(param2), EncEffects_BGM(param2), NULL);
        sub_02050924(param1, sub_02051074, v0);
    } else {
        UnkStruct_02050DD4 * v1;

        v1 = sub_02050DD4(param2, EncEffects_CutInEffect(param2), EncEffects_BGM(param2), NULL);
        sub_02050924(param1, sub_02050EE0, v1);
    }
}

static BOOL sub_02050EE0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_02050DD4 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        sub_02062C48(v0->unk_38);
        sub_0202CF28(sub_0202CD88(v0->unk_0C), (1 + 6));
        sub_020557DC(param0, v1->unk_04, v1->unk_08);
        v1->unk_00++;
        break;
    case 1:
        sub_02055820(param0);
        v1->unk_00++;
        break;
    case 2:
        sub_02050ABC(param0, v1->unk_10);
        v1->unk_00++;
        break;
    case 3:
        sub_02050B1C(v1->unk_10, v0);
        sub_0206D1B8(v0, v1->unk_10->unk_10C, v1->unk_10->unk_14);

        if (sub_02052868(v1->unk_10->unk_14) == 0) {
            sub_02050DFC(v1);
            sub_02069434(v0->unk_94);
            sub_02050924(param0, sub_02052B2C, NULL);
            return 0;
        }

        if (sub_0206A984(sub_020507E4(v0->unk_0C))) {
            HealAllPokemonInParty(Party_GetFromSavedata(v0->unk_0C));
        }

        sub_020518B0(v0, v1->unk_10);
        sub_02051988(v0, v1->unk_10);

        if (sub_0206981C(v0->unk_94)) {
            if (sub_02069798(v0->unk_94)) {
                if ((!(v1->unk_10->unk_14 == 0x1)) && (!(v1->unk_10->unk_14 == 0x4))) {
                    sub_02069434(v0->unk_94);
                }
            } else {
                sub_02069434(v0->unk_94);
            }
        }

        sub_02055868(param0);
        v1->unk_00++;
        break;
    case 4:
        ov6_02246034(v0, v1->unk_10);
        sub_020558F0(param0);
        v1->unk_00++;
        break;
    case 5:
        if (sub_0206981C(v0->unk_94)) {
            sub_020695C8(v0, v1->unk_10->unk_14, v0->unk_94);
            sub_02069638(v0, v0->unk_94);
        }

        v1->unk_00++;
        break;
    case 6:
        if (sub_02069690(v0->unk_94)) {
            sub_02062C78(v0->unk_38);
            sub_02050DFC(v1);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL sub_02051074 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_02050ACC * v1;
    int * v2;
    u16 * v3;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = sub_02050A68(param0);
    v3 = sub_0203A784(sub_0203A790(v0->unk_0C));

    switch (*v2) {
    case 0:
        sub_02062C48(v0->unk_38);
        sub_0202CF28(sub_0202CD88(v0->unk_0C), (1 + 6));
        sub_020557DC(param0, v1->unk_04, v1->unk_08);
        (*v2)++;
        break;
    case 1:
        sub_02055820(param0);
        (*v2)++;
        break;
    case 2:
        sub_02050ABC(param0, v1->unk_10);
        (*v2)++;
        break;
    case 3:
        sub_02050B1C(v1->unk_10, v0);

        if (v1->unk_10->unk_14 == 0x4) {
            TVBroadcast * v4 = SaveData_TVBroadcast(v0->unk_0C);
            Pokemon * v5 = Party_GetPokemonBySlotIndex(v1->unk_10->parties[1], 0);

            sub_0206D018(v4, v5);
        }

        sub_020518B0(v0, v1->unk_10);

        if (((*v3) == 0) && (v1->unk_10->unk_14 != 0x4)) {
            UnkStruct_02049FA8 * v6;

            v6 = sub_0203A730(sub_0203A790(v0->unk_0C));
            sub_020539A0(param0, v6);
        }

        sub_02051988(v0, v1->unk_10);
        (*v2)++;
        break;
    case 4:
        sub_02055868(param0);
        (*v2)++;
        break;
    case 5:
        sub_02062C78(v0->unk_38);
        sub_020558F0(param0);
        (*v2)++;
        break;
    case 6:
        if ((*v3) == 0) {
            if (v1->unk_10->unk_14 == 0x4) {
                sub_0203E8E0(param0, 8802, NULL, NULL);
            } else {
                sub_0203E8E0(param0, 8809, NULL, NULL);
            }
        } else {
            PCBoxes * v7 = SaveData_PCBoxes(v0->unk_0C);
            Party * v8 = Party_GetFromSavedata(v0->unk_0C);

            if ((PCBoxes_FirstEmptyBox(v7) == 18) && (Party_GetCurrentCount(v8) == 6)) {
                sub_0203E8E0(param0, 8822, NULL, NULL);
            }
        }

        (*v2)++;
        break;
    case 7:
        sub_02050AF0(v1);
        return 1;
        break;
    }

    return 0;
}

void sub_0205120C (UnkStruct_020508D4 * param0, int * param1)
{
    UnkStruct_02050ACC * v0;
    BattleParams * v1;
    UnkStruct_0203CDB0 * v2;

    v2 = sub_02050A60(param0);
    sub_02069434(v2->unk_94);

    v1 = sub_02051D8C(11, (0x0 | 0x0));
    sub_02052314(v1, v2);

    v1->unk_128 = 0;
    v1->unk_12C = 0;

    ov6_02242034(v2, v1);

    sub_0202CF28(sub_0202CD88(v2->unk_0C), (1 + 6));
    sub_02050C4C(param0, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param1);
}

void sub_02051270 (UnkStruct_020508D4 * param0, u16 param1, u8 param2, int * param3, BOOL param4)
{
    UnkStruct_02050ACC * v0;
    BattleParams * v1;
    UnkStruct_0203CDB0 * v2;

    v2 = sub_02050A60(param0);
    sub_02069434(v2->unk_94);

    v1 = sub_02051D8C(11, (0x0 | 0x0));
    sub_02052314(v1, v2);

    ov6_022420D4(v2, param1, param2, v1);

    if (param4) {
        v1->unk_164 |= 0x8;
    }

    sub_0202CF28(sub_0202CD88(v2->unk_0C), (1 + 6));
    sub_02050C4C(param0, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param3);
}

void sub_020512E4 (UnkStruct_020508D4 * param0, u16 param1, u8 param2, int * param3, BOOL param4)
{
    UnkStruct_02050ACC * v0;
    BattleParams * v1;
    UnkStruct_0203CDB0 * v2;
    Pokemon * v3;
    int v4;

    v2 = sub_02050A60(param0);
    sub_02069434(v2->unk_94);

    v1 = sub_02051D8C(11, (0x0 | 0x0));
    sub_02052314(v1, v2);

    ov6_022420D4(v2, param1, param2, v1);

    v4 = 1;
    v3 = Party_GetPokemonBySlotIndex(v1->parties[1], 0);

    Pokemon_SetValue(v3, 110, &v4);

    if (param4) {
        v1->unk_164 |= 0x8;
    }

    sub_0202CF28(sub_0202CD88(v2->unk_0C), (1 + 6));
    sub_02050C4C(param0, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param3);
}

static BOOL sub_0205136C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_02050ACC * v1;
    int * v2;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);
    v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_02062C48(v0->unk_38);
        sub_0202CF28(sub_0202CD88(v0->unk_0C), (1 + 6));
        sub_020557DC(param0, v1->unk_04, v1->unk_08);
        (*v2)++;
        break;
    case 1:
        sub_02055820(param0);
        (*v2)++;
        break;
    case 2:
        sub_02050ABC(param0, v1->unk_10);
        (*v2)++;
        break;
    case 3:
        sub_02050B1C(v1->unk_10, v0);
        sub_020563AC(v0, v1->unk_10);
        sub_020518B0(v0, v1->unk_10);
        (*v2)++;
        break;
    case 4:
        sub_02055868(param0);
        (*v2)++;
        break;
    case 5:
        sub_02062C78(v0->unk_38);
        sub_020558F0(param0);
        (*v2)++;
        break;
    case 6:
        sub_02050AF0(v1);

        if (sub_020563BC(v0) == 0) {
            sub_0203E918(param0, 3, NULL);
            return 0;
        } else {
            return 1;
        }
        break;
    }

    return 0;
}

void sub_02051450 (UnkStruct_0203CDB0 * param0, BattleParams * param1)
{
    UnkStruct_02050ACC * v0;

    v0 = sub_02050ACC(param1, EncEffects_CutInEffect(param1), EncEffects_BGM(param1), NULL);
    sub_02050904(param0, sub_0205136C, v0);
}

void sub_02051480 (UnkStruct_020508D4 * param0, int param1, int param2, int * param3)
{
    UnkStruct_02050ACC * v0;
    BattleParams * v1;
    UnkStruct_0203CDB0 * v2;

    v2 = sub_02050A60(param0);
    v1 = sub_02051D8C(11, 0x1);

    sub_02052314(v1, v2);

    v1->unk_164 = 0x1;
    v1->trainerIDs[1] = param1;
    v1->trainerIDs[3] = 0;
    v1->trainerIDs[2] = 0;

    TrainerData_Encounter(v1, v2->unk_0C, param2);
    sub_0202CF28(sub_0202CD88(v2->unk_0C), (1 + 7));
    sub_02050C4C(param0, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param3);
}

static BOOL sub_020514E8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02050ACC * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    int * v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_02062C48(v1->unk_38);
        sub_020557DC(param0, v0->unk_04, v0->unk_08);
        (*v2)++;
        break;
    case 1:
        sub_02055820(param0);
        (*v2)++;
        break;
    case 2:
        sub_02050ABC(param0, v0->unk_10);
        (*v2)++;
        break;
    case 3:
        (*v2)++;
        break;
    case 4:
        sub_02055868(param0);
        (*v2)++;
        break;
    case 5:
        sub_02062C78(v1->unk_38);
        sub_020558F0(param0);
        (*v2)++;
        break;
    case 6:
        sub_02050AF0(v0);
        return 1;
        break;
    }

    return 0;
}

void sub_02051590 (UnkStruct_020508D4 * param0)
{
    UnkStruct_02050ACC * v0;
    BattleParams * v1;
    UnkStruct_0203CDB0 * v2 = sub_02050A60(param0);

    v1 = sub_02051F4C(11, v2);
    v0 = sub_02050ACC(v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), NULL);

    sub_02050944(param0, sub_020514E8, v0);
}

void sub_020515CC (UnkStruct_020508D4 * param0, int param1, int param2, int param3, int param4, int * param5)
{
    u32 v0;
    UnkStruct_02050ACC * v1;
    BattleParams * v2;
    UnkStruct_0203CDB0 * v3;

    v3 = sub_02050A60(param0);

    if ((param2 != 0) && (param1 != param2)) {
        if (param3 == 0) {
            v0 = ((0x2 | 0x1) | 0x10);
        } else {
            v0 = ((0x2 | 0x1) | 0x8 | 0x40);
        }
    } else if (param1 == param2) {
        v0 = (0x2 | 0x1);
    } else {
        v0 = 0x1;
    }

    sub_02069434(v3->unk_94);
    v2 = sub_02051D8C(11, v0);
    sub_02052314(v2, v3);

    if ((v3->unk_1C->unk_00 >= 573) && (v3->unk_1C->unk_00 <= 583)) {
        v2->unk_164 |= 0x80;
    }

    v2->trainerIDs[1] = param1;
    v2->trainerIDs[3] = param2;
    v2->trainerIDs[2] = param3;

    TrainerData_Encounter(v2, v3->unk_0C, param4);
    sub_0202CF28(sub_0202CD88(v3->unk_0C), (1 + 7));
    sub_02050C4C(param0, v2, EncEffects_CutInEffect(v2), EncEffects_BGM(v2), param5);
}

void sub_0205167C (UnkStruct_020508D4 * param0, const u8 * param1, int param2)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02050ACC * v1;
    BattleParams * v2;

    v2 = sub_02051D8C(11, param2);
    sub_020526CC(v2, v0, param1);

    v1 = sub_02050ACC(v2, EncEffects_CutInEffect(v2), EncEffects_BGM(v2), NULL);
    sub_02050944(param0, sub_02050CA8, v1);
}

static int sub_020516C8 (const UnkStruct_0202610C * param0, int param1)
{
    int v0, v1;

    v1 = sub_020261B0(param0);

    if (param1 & 0x8) {
        v0 = (UnkEnum_0202F510_14);
    } else if (param1 & 0x2) {
        v0 = (UnkEnum_0202F510_07);
    } else {
        v0 = (UnkEnum_0202F510_00);
    }

    if (v1 != 0xff) {
        v0 += 1 + v1;
    }

    return v0;
}

void sub_020516F4 (UnkStruct_020508D4 * param0, int param1, int param2, int param3)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02050ACC * v1;
    BattleParams * v2;
    int v3;
    int v4, v5;

    if (param3 == 0) {
        v4 = (0x4 | 0x1);
        v2 = sub_02051D8C(11, (0x4 | 0x1));
        v5 = (UnkEnum_0202F510_00);
    } else if (param3 == 1) {
        v4 = ((0x4 | 0x1) | 0x2);
        v2 = sub_02051D8C(11, ((0x4 | 0x1) | 0x2));
        v5 = (UnkEnum_0202F510_07);
    } else {
        v4 = ((((0x4 | 0x1) | 0x2) | 0x8) | 0x80);
        v2 = sub_02051D8C(11, ((((0x4 | 0x1) | 0x2) | 0x8) | 0x80));

        v2->trainerIDs[1] = 1;
        v2->trainerIDs[3] = 2;

        TrainerData_Encounter(v2, v0->unk_0C, 11);

        v5 = (UnkEnum_0202F510_14);
    }

    sub_02052348(v2, v0, param2);
    sub_0202F1F8(v0->unk_0C, 11, &v3);

    v2->unk_18A = v5;

    v1 = sub_02050ACC(v2, EncEffects_CutInEffect(v2), EncEffects_BGM(v2), NULL);
    v1->unk_0C = param1;

    sub_02050944(param0, sub_02050D4C, v1);
}

static BOOL sub_02051790 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02050ACC * v1 = sub_02050A64(param0);
    int * v2 = sub_02050A68(param0);

    switch (*v2) {
    case 0:
        sub_02050944(param0, sub_02050CA8, v1);
        (*v2)++;
        break;
    case 1:
        if (sub_0202F250() == 1) {
            sub_0202F22C();
        }

        sub_020597B4(v0);
        return 1;
    }

    return 0;
}

void sub_020517E8 (UnkStruct_0203CDB0 * param0, const u8 * param1, int param2)
{
    UnkStruct_02050ACC * v0;
    BattleParams * v1;
    int v2;

    v1 = sub_02051D8C(11, param2);

    sub_020526CC(v1, param0, param1);
    sub_0202F1F8(param0->unk_0C, 11, &v2);

    v1->unk_18A = sub_020516C8(param0->unk_B0, param2);
    v0 = sub_02050ACC(v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), NULL);

    sub_02050904(param0, sub_02051790, v0);
}

void sub_0205184C (UnkStruct_0203CDB0 * param0, const Party * param1, int param2)
{
    UnkStruct_02050ACC * v0;
    BattleParams * v1;
    int v2;

    v1 = sub_02051D8C(11, param2);

    sub_020524E4(v1, param0, param1, NULL);
    sub_0202F1F8(param0->unk_0C, 11, &v2);

    v1->unk_18A = sub_020516C8(param0->unk_B0, param2);
    v0 = sub_02050ACC(v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), NULL);

    sub_02050904(param0, sub_02051790, v0);
}

static void sub_020518B0 (UnkStruct_0203CDB0 * param0, BattleParams * param1)
{
    Pokemon * v0;
    u32 v1 = param1->battleType;
    int v2 = param1->unk_14;

    if (v1 & 0x4) {
        return;
    }

    if (v1 & 0x80) {
        return;
    }

    if ((v1 == BATTLE_TYPE_WILD_MON)
            || (v1 == BATTLE_TYPE_ROAMER)
            || (v1 == BATTLE_TYPE_AI_PARTNER)) {
        if (v2 == 0x1) {
            sub_0202CFEC(sub_0202CD88(param0->unk_0C), 8);
        } else if (v2 == 0x4) {
            v0 = Party_GetPokemonBySlotIndex(param1->parties[1], 0);

            if (sub_0207A294(0, Pokemon_GetValue(v0, MON_DATA_SPECIES, 0))) {
                sub_0202CFEC(sub_0202CD88(param0->unk_0C), 9);
            } else {
                sub_0202CFEC(sub_0202CD88(param0->unk_0C), 10);
            }
        }
    } else if ((v1 & BATTLE_TYPE_TRAINER) || (v1 & BATTLE_TYPE_TAG)) {
        if (v2 == 0x1) {
            sub_0202CFEC(sub_0202CD88(param0->unk_0C), 11);
        }
    } else if ((v1 & BATTLE_TYPE_SAFARI) || (v1 & BATTLE_TYPE_PAL_PARK)) {
        if (v2 == 0x4) {
            v0 = Party_GetPokemonBySlotIndex(param1->parties[1], 0);

            if (sub_0207A294(0, Pokemon_GetValue(v0, MON_DATA_SPECIES, 0))) {
                sub_0202CFEC(sub_0202CD88(param0->unk_0C), 9);
            } else {
                sub_0202CFEC(sub_0202CD88(param0->unk_0C), 10);
            }
        }
    }
}

static void sub_02051988 (UnkStruct_0203CDB0 * param0, BattleParams * param1)
{
    Pokemon * v0;
    u32 v1 = param1->battleType;
    int v2 = param1->unk_14;

    if (v1 & BATTLE_TYPE_LINK) {
        return;
    }

    if (v1 & BATTLE_TYPE_FRONTIER) {
        return;
    }

    if (v1 & BATTLE_TYPE_PAL_PARK) {
        return;
    }

    if ((v1 == BATTLE_TYPE_WILD_MON)
            || (v1 == BATTLE_TYPE_ROAMER)
            || (v1 == BATTLE_TYPE_AI_PARTNER)
            || (v1 == BATTLE_TYPE_SAFARI)) {
        UnkStruct_0202BE38 * v3;

        if (v2 == 0x1) {
            param0->unk_78.unk_02++;

            if (param0->unk_78.unk_02 >= 5) {
                v0 = Party_GetPokemonBySlotIndex(param1->parties[1], 0);
                v3 = sub_0202BECC(sub_02025E5C(param0->unk_0C), Pokemon_GetValue(v0, MON_DATA_SPECIES, 0), Pokemon_GetValue(v0, MON_DATA_GENDER, 0), param1->unk_138, 11);
                sub_0202B758(param0->unk_9C, v3, 2);
            }
        } else if (v2 == 0x4) {
            int v4;

            v4 = param1->unk_148;
            v0 = Party_GetPokemonBySlotIndex(param1->parties[v4], 0);
            v3 = sub_0202BE4C(sub_02025E5C(param0->unk_0C), Pokemon_GetValue(v0, MON_DATA_SPECIES, 0), Pokemon_GetValue(v0, MON_DATA_GENDER, 0), param1->unk_138, 11);

            sub_0202B758(param0->unk_9C, v3, 2);
        }
    } else if ((v1 & BATTLE_TYPE_TRAINER) || (v1 & BATTLE_TYPE_TAG)) {
        if (v2 == 0x1) {
            sub_0202C720(param0->unk_9C, param0->unk_1C->unk_00, param1->trainerIDs[1], 11);
        }
    }
}

void sub_02051ABC (UnkStruct_020508D4 * param0, u16 param1, u8 param2, int * param3, BOOL param4)
{
    UnkStruct_02050ACC * v0;
    BattleParams * v1;
    UnkStruct_0203CDB0 * v2;

    v2 = sub_02050A60(param0);
    sub_02069434(v2->unk_94);

    v1 = sub_02051D8C(11, (0x0 | 0x0));
    sub_02052314(v1, v2);

    ov6_022420D4(v2, param1, param2, v1);

    {
        Pokemon * v3;

        v3 = Party_GetPokemonBySlotIndex(v1->parties[1], 0);
        Pokemon_SetGiratinaOriginForm(v3);
    }

    if (param4) {
        v1->unk_164 |= 0x8;
    }

    v1->unk_164 |= 0x40 | 0x80;
    v1->unk_12C = 23;

    sub_0202CF28(sub_0202CD88(v2->unk_0C), (1 + 6));
    sub_02050C4C(param0, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param3);
}
