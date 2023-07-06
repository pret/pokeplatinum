#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"

#include "data_021BF67C.h"

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_0202B628_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_0207D99C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02055BA8.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_defs/trainer_data.h"
#include "struct_defs/struct_0209C370.h"
#include "overlay006/battle_params.h"
#include "overlay006/struct_ov6_02240D5C_sub1.h"

#include "unk_020021B0.h"
#include "unk_0200AC5C.h"
#include "unk_0201378C.h"
#include "heap.h"
#include "strbuf.h"
#include "unk_0202440C.h"
#include "unk_02025CB0.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202602C.h"
#include "unk_0202631C.h"
#include "unk_020279FC.h"
#include "unk_02027F84.h"
#include "unk_0202C858.h"
#include "unk_0202CC64.h"
#include "unk_0202CD50.h"
#include "unk_0203266C.h"
#include "unk_02034198.h"
#include "unk_020366A0.h"
#include "map_header.h"
#include "unk_0203A6DC.h"
#include "unk_020507CC.h"
#include "unk_02051D8C.h"
#include "unk_02054D00.h"
#include "unk_020559DC.h"
#include "unk_02056720.h"
#include "unk_0205C980.h"
#include "unk_0205DAC8.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0207D3B8.h"
#include "unk_0208C324.h"

static void sub_0205281C(BattleParams * param0, const UnkStruct_0203CDB0 * param1);
void sub_02052894(BattleParams * param0);

BattleParams * sub_02051D8C (int param0, u32 param1)
{
    int v0;
    BattleParams * v1;

    v1 = Heap_AllocFromHeap(param0, sizeof(BattleParams));
    MI_CpuClear8(v1, sizeof(BattleParams));

    v1->battleType = param1;
    v1->unk_164 = 0;
    v1->unk_14 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v1->unk_18[v0] = 0;
        MI_CpuClear32(&v1->trainerData[v0], sizeof(TrainerData));
    }

    v1->unk_128 = 0;
    v1->unk_12C = 24;
    v1->unk_130 = 0;
    v1->unk_138 = 0;
    v1->unk_13C = 0;
    v1->unk_140 = 1;
    v1->unk_144 = 1;
    v1->unk_14C = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v1->parties[v0] = sub_02079FF4(param0);
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1->unk_D0[v0] = sub_02025E6C(param0);
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1->unk_F0[v0] = sub_0202CC84(param0);
    }

    v1->unk_E0 = sub_0207D3C0(param0);
    v1->unk_E8 = sub_02026324(param0);
    v1->unk_108 = sub_020279FC(param0);
    v1->unk_10C = sub_0206D140(param0);
    v1->unk_E4 = NULL;
    v1->unk_190 = NULL;
    v1->unk_168 = 0;
    v1->unk_104 = NULL;
    v1->unk_11C = NULL;
    v1->unk_120 = NULL;
    v1->unk_16C = 0;

    {
        RTCDate v2;
        RTCTime v3;

        sub_0201384C(&v2, &v3);
        v1->unk_174 = v2.year + v2.month * 0x100 * v2.day * 0x10000 + v3.hour * 0x10000 + (v3.minute + v3.second) * 0x1000000 + Unk_021BF67C.unk_2C;
    }

    if (sub_02035E38() == 1) {
        for (v0 = 0; v0 < sub_02035E18(); v0++) {
            v1->unk_178[v0] = sub_020362F4(v0);
        }

        v1->unk_188 = sub_0203608C();
    }

    MI_CpuClear8(&(v1->unk_110), sizeof(BattleParams_sub1));
    return v1;
}

BattleParams * sub_02051F24 (int param0, int param1)
{
    BattleParams * v0;

    v0 = sub_02051D8C(param0, 0x20);
    v0->unk_168 = param1;

    return v0;
}

BattleParams * sub_02051F38 (int param0, int param1)
{
    BattleParams * v0;

    v0 = sub_02051D8C(param0, 0x200);
    v0->unk_168 = param1;

    return v0;
}

BattleParams * sub_02051F4C (int param0, const UnkStruct_0203CDB0 * param1)
{
    UnkStruct_02025E6C * v0 = sub_02025E38(param1->unk_0C);
    UnkStruct_020279FC * v1 = sub_02025E44(param1->unk_0C);
    UnkStruct_0200B144 * v2;
    Strbuf* v3;
    BattleParams * v4;
    Pokemon * v5;

    v4 = sub_02051D8C(param0, 0x400);
    v2 = sub_0200B144(1, 26, 553, param0);
    v3 = Strbuf_Init(8, param0);

    sub_0200B1B8(v2, sub_02025F30(v0) ^ 1, v3);
    sub_02025EC0(v4->unk_D0[0], Strbuf_GetData(v3));
    Strbuf_Free(v3);
    sub_0200B190(v2);
    sub_02025F2C(v4->unk_D0[0], sub_02025F30(v0) ^ 1);
    sub_0205281C(v4, param1);
    sub_02027A10(v1, v4->unk_108);

    v4->unk_138 = sub_02055BA8(param1);
    sub_0207D570(v4->unk_E0, 4, 20, param0);
    v5 = AllocMonZeroed(param0);

    sub_02073D80(v5, sub_0206B08C(sub_020507E4(param1->unk_0C)), 5, 32, 0, 0, 2, 0);
    Party_AddPokemon(v4->parties[0], v5);
    sub_02073D80(v5, 399, 2, 32, 0, 0, 2, 0);
    Party_AddPokemon(v4->parties[1], v5);
    Heap_FreeToHeap(v5);

    v4->unk_EC = sub_02024420(param1->unk_0C);
    v4->unk_E4 = param1->unk_98;
    v4->unk_190 = NULL;
    v4->unk_11C = sub_0202CD88(param1->unk_0C);
    v4->unk_120 = param1->unk_9C;
    v4->mapHeaderID = param1->unk_1C->unk_00;

    sub_02052894(v4);

    return v4;
}

void sub_020520A4 (BattleParams * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->parties[v0] != NULL);
        Heap_FreeToHeap(param0->parties[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->unk_D0[v0] != NULL);
        Heap_FreeToHeap(param0->unk_D0[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->unk_F0[v0] != NULL);
        Heap_FreeToHeap(param0->unk_F0[v0]);
    }

    Heap_FreeToHeap(param0->unk_E0);
    Heap_FreeToHeap(param0->unk_E8);
    Heap_FreeToHeap(param0->unk_108);
    sub_0206D158(param0->unk_10C);
    Heap_FreeToHeap(param0);
}

void sub_0205213C (BattleParams * param0, Pokemon * param1, int param2)
{
    int v0;

    GF_ASSERT(param2 < 4);
    v0 = Party_AddPokemon(param0->parties[param2], param1);
    GF_ASSERT(v0);
}

void sub_02052164 (BattleParams * param0, const Party * param1, int param2)
{
    GF_ASSERT(param2 < 4);
    Party_cpy(param1, param0->parties[param2]);
}

void sub_02052184 (BattleParams * param0, const UnkStruct_02025E6C * param1, int param2)
{
    GF_ASSERT(param2 < 4);
    sub_02025E80(param1, param0->unk_D0[param2]);
}

void sub_020521A4 (BattleParams * param0, const UnkStruct_0202CC84 * param1, int param2)
{
    sub_0202CD3C(param0->unk_F0[param2], param1);
}

void sub_020521B8 (BattleParams * param0, const UnkStruct_0203CDB0 * param1, UnkStruct_021C0794 * param2, int param3, UnkStruct_0202B628 * param4, UnkStruct_0207D99C * param5, UnkStruct_0209C370 * param6)
{
    UnkStruct_02025E6C * v0 = sub_02025E38(param2);
    Party * v1 = Party_GetFromSavedata(param2);
    UnkStruct_0207D3C0 * v2 = sub_0207D990(param2);
    UnkStruct_02026324 * v3 = sub_02027560(param2);
    UnkStruct_0202CC84 * v4 = sub_0202CC98(param2);
    UnkStruct_020279FC * v5 = sub_02025E44(param2);
    UnkStruct_0203A790 * v6 = sub_0203A790(param2);

    if (param1 != NULL) {
        sub_0205281C(param0, param1);
        param0->unk_138 = sub_02055BA8(param1);
    } else {
        param0->unk_128 = MapHeader_GetBattleBG(param3);
        param0->unk_12C = 9;
        {
            UnkStruct_02055BA8 * v7 = sub_02025CD8(param2);

            param0->unk_138 = sub_02013974(v7->unk_14.hour);
        }
    }

    sub_02052184(param0, v0, 0);
    sub_02052164(param0, v1, 0);
    sub_0207D3EC(v2, param0->unk_E0);
    sub_02026338(v3, param0->unk_E8);
    sub_02027A10(v5, param0->unk_108);
    sub_020521A4(param0, v4, 0);

    param0->unk_EC = sub_02024420(param2);
    param0->unk_130 = sub_0203A138(param3);
    param0->unk_13C = MapHeader_GetMapEvolutionMethod(param3);
    param0->unk_140 = sub_0208C324(param2);
    param0->unk_144 = sub_0206ADFC(sub_020507E4(param2));
    param0->unk_14C = sub_0203A74C(v6);
    param0->unk_E4 = param5;
    param0->unk_190 = param6;
    param0->unk_100 = sub_02056B24(param2);
    param0->unk_104 = sub_0202C878(param2);
    param0->unk_11C = sub_0202CD88(param2);
    param0->unk_120 = param4;
    param0->unk_124 = sub_02027F8C(param2);
    param0->mapHeaderID = param3;
    param0->unk_198 = param2;
}

void sub_02052314 (BattleParams * param0, const UnkStruct_0203CDB0 * param1)
{
    sub_020521B8(param0, param1, param1->unk_0C, param1->unk_1C->unk_00, param1->unk_9C, param1->unk_98, param1->unk_BC);
    sub_02052894(param0);
}

void sub_02052348 (BattleParams * param0, const UnkStruct_0203CDB0 * param1, int param2)
{
    int v0;
    u32 v1;
    UnkStruct_02025E6C * v2 = sub_02025E38(param1->unk_0C);
    Party * v3 = Party_GetFromSavedata(param1->unk_0C);
    UnkStruct_0207D3C0 * v4 = sub_0207D990(param1->unk_0C);
    UnkStruct_02026324 * v5 = sub_02027560(param1->unk_0C);
    UnkStruct_0202CC84 * v6 = sub_0202CC98(param1->unk_0C);
    UnkStruct_020279FC * v7 = sub_02025E44(param1->unk_0C);
    Pokemon * v8;

    param0->unk_128 = 6;
    param0->unk_12C = 9;

    sub_02052184(param0, v2, 0);
    v8 = AllocMonZeroed(11);
    Party_InitWithCapacity(param0->parties[0], Party_GetCurrentCount(v3));

    for (v0 = 0; v0 < Party_GetCurrentCount(v3); v0++) {
        sub_020775EC(Party_GetPokemonBySlotIndex(v3, v0), v8);

        if ((GetMonData(v8, MON_DATA_161, NULL) != param2) && (param2 != 0)) {
            v1 = sub_02075AD0(GetMonData(v8, MON_DATA_SPECIES, NULL), param2);

            sub_02074B30(v8, 8, &v1);
            sub_0207418C(v8);
        }

        sub_0205213C(param0, v8, 0);
    }

    Heap_FreeToHeap(v8);
    sub_0207D3EC(v4, param0->unk_E0);
    sub_02026338(v5, param0->unk_E8);
    sub_02027A10(v7, param0->unk_108);
    sub_020521A4(param0, v6, 0);

    param0->unk_EC = sub_02024420(param1->unk_0C);
    param0->unk_138 = sub_02055BA8(param1);
    param0->unk_E4 = param1->unk_98;
    param0->unk_190 = param1->unk_BC;
    param0->unk_100 = sub_02056B24(param1->unk_0C);
    param0->unk_104 = sub_0202C878(param1->unk_0C);
    param0->unk_11C = sub_0202CD88(param1->unk_0C);
    param0->unk_120 = param1->unk_9C;
    param0->unk_124 = sub_02027F8C(param1->unk_0C);
    param0->mapHeaderID = param1->unk_1C->unk_00;
    param0->unk_198 = param1->unk_0C;

    sub_02052894(param0);
}

void sub_020524E4 (BattleParams * param0, const UnkStruct_0203CDB0 * param1, const Party * param2, const u8 * param3)
{
    UnkStruct_02025E6C * v0 = sub_02025E38(param1->unk_0C);
    UnkStruct_0207D3C0 * v1 = sub_0207D990(param1->unk_0C);
    UnkStruct_02026324 * v2 = sub_02027560(param1->unk_0C);
    UnkStruct_0202CC84 * v3 = sub_0202CC98(param1->unk_0C);
    UnkStruct_020279FC * v4 = sub_02025E44(param1->unk_0C);
    const UnkStruct_0202610C * v5 = param1->unk_B0;
    int v6, v7, v8;
    Pokemon * v9;

    param0->unk_128 = 6;
    param0->unk_12C = 9;

    sub_02052184(param0, v0, 0);

    if (param3 == NULL) {
        sub_02052164(param0, param2, 0);
    } else {
        int v10;

        v10 = 0;

        for (v8 = 0; v8 < 6; v8++) {
            if (param3[v8] != 0) {
                v10++;
            }
        }

        if (v10 == 0) {
            sub_02052164(param0, param2, 0);
        } else {
            v9 = AllocMonZeroed(11);
            Party_InitWithCapacity(param0->parties[0], v10);

            for (v8 = 0; v8 < v10; v8++) {
                sub_020775EC(Party_GetPokemonBySlotIndex(param2, param3[v8] - 1), v9);
                sub_0205213C(param0, v9, 0);
            }

            Heap_FreeToHeap(v9);
        }
    }

    if (v5) {
        if (sub_02026074(v5, 12)) {
            param0->unk_16C = 1;
        }
    }

    sub_0207D3EC(v1, param0->unk_E0);
    sub_02026338(v2, param0->unk_E8);
    sub_02027A10(v4, param0->unk_108);
    sub_020521A4(param0, v3, 0);

    param0->unk_EC = sub_02024420(param1->unk_0C);
    param0->unk_138 = sub_02055BA8(param1);
    param0->unk_E4 = param1->unk_98;
    param0->unk_190 = param1->unk_BC;
    param0->unk_104 = sub_0202C878(param1->unk_0C);
    param0->unk_11C = sub_0202CD88(param1->unk_0C);
    param0->unk_120 = param1->unk_9C;
    param0->mapHeaderID = param1->unk_1C->unk_00;
    param0->unk_124 = sub_02027F8C(param1->unk_0C);
    param0->unk_198 = param1->unk_0C;

    if (sub_020326C4(sub_0203895C())) {
        int v11 = sub_02025F8C(v0);
        int v12 = sub_02025F30(v0);

        param0->trainerData[0].class = sub_0205CA14(v12, v11, 1);
        sub_020021B0(&param0->trainerData[0].unk_14[0], sub_02025EF0(param0->unk_D0[0]));
        param0->trainerData[2] = param0->trainerData[0];
    } else {
        sub_02052894(param0);
    }
}

void sub_020526CC (BattleParams * param0, const UnkStruct_0203CDB0 * param1, const u8 * param2)
{
    sub_020524E4(param0, param1, Party_GetFromSavedata(param1->unk_0C), param2);
}

void sub_020526E8 (const BattleParams * param0, UnkStruct_0203CDB0 * param1)
{
    UnkStruct_02025E6C * v0 = sub_02025E38(param1->unk_0C);
    Party * v1 = Party_GetFromSavedata(param1->unk_0C);
    UnkStruct_0207D3C0 * v2 = sub_0207D990(param1->unk_0C);
    UnkStruct_02026324 * v3 = sub_02027560(param1->unk_0C);
    u16 * v4 = sub_0203A784(sub_0203A790(param1->unk_0C));

    sub_02025E80(param0->unk_D0[0], v0);
    Party_cpy(param0->parties[0], v1);
    sub_0207D3EC(param0->unk_E0, v2);
    sub_02026338(param0->unk_E8, v3);

    *v4 = param0->unk_168;
}

void sub_02052754 (const BattleParams * param0, UnkStruct_0203CDB0 * param1)
{
    UnkStruct_02025E6C * v0 = sub_02025E38(param1->unk_0C);
    Party * v1 = Party_GetFromSavedata(param1->unk_0C);
    UnkStruct_0207D3C0 * v2 = sub_0207D990(param1->unk_0C);
    UnkStruct_02026324 * v3 = sub_02027560(param1->unk_0C);

    sub_02026338(param0->unk_E8, v3);
}

static int sub_02052780 (const UnkStruct_0203CDB0 * param0, int param1)
{
    u8 v0 = sub_02054F94(param0, param0->unk_1C->unk_08, param0->unk_1C->unk_0C);
    static const v1[] = {
        0,
        7,
        9,
        2,
        4,
        6,
        9,
        9,
        9,
        5,
        5,
        5,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22
    };

    if (sub_0205DC5C(v0)) {
        return 8;
    } else if (sub_0205DAC8(v0) || sub_0205DAD4(v0)) {
        return 2;
    } else if (sub_0205DB6C(v0)) {
        return 1;
    } else if (sub_0205DD18(v0)) {
        return 6;
    } else if (sub_0205DCE0(v0) || sub_0205DCFC(v0)) {
        return 10;
    } else if (sub_0205DDA8(v0)) {
        return 5;
    }

    if (sub_0205DB58(v0)) {
        return 7;
    }

    if (param1 < NELEMS(v1)) {
        return v1[param1];
    }

    GF_ASSERT(0);

    return 24;
}

static void sub_0205281C (BattleParams * param0, const UnkStruct_0203CDB0 * param1)
{
    UnkStruct_0205EC34 * v0 = sub_0203A780(sub_0203A790(param1->unk_0C));

    param0->unk_128 = MapHeader_GetBattleBG(param1->unk_1C->unk_00);

    if (v0->unk_04 == 0x2) {
        param0->unk_128 = 1;
    }

    param0->unk_12C = sub_02052780(param1, param0->unk_128);
}

void sub_0205285C (BattleParams * param0)
{
    param0->unk_12C = 7;
}

BOOL sub_02052868 (u32 param0)
{
    switch (param0) {
    case 0x2:
    case 0x3:
        return 0;
    default:
        return 1;
    }
}

BOOL sub_02052878 (u32 param0)
{
    switch (param0) {
    case 0x1:
    case 0x4:
        return 0;
    default:
        return 1;
    }
}

BOOL sub_02052888 (u32 param0)
{
    switch (param0) {
    case 0x4:
        return 0;
    default:
        return 1;
    }
}

void sub_02052894 (BattleParams * param0)
{
    param0->trainerData[0].class = sub_02025F30(param0->unk_D0[0]);
    sub_020021B0(&param0->trainerData[0].unk_14[0], sub_02025EF0(param0->unk_D0[0]));
    param0->trainerData[2] = param0->trainerData[0];
}
