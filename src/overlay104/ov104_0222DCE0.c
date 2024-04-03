#include <nitro.h>
#include <string.h>

#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "savedata.h"

#include "struct_defs/sentence.h"
#include "struct_defs/struct_0204B184.h"
#include "struct_defs/struct_0204B1E8.h"
#include "overlay006/battle_params.h"
#include "overlay104/struct_ov104_0223A348.h"
#include "overlay104/struct_ov104_0223A348_sub1.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"

#include "unk_020021B0.h"
#include "narc.h"
#include "message.h"
#include "unk_0200B358.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202C858.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_02038F8C.h"
#include "map_header.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0208C098.h"
#include "unk_02092494.h"
#include "flags.h"
#include "overlay104/ov104_0222DCE0.h"

void ov104_0222E1C0(SaveData * param0, Party * param1, Pokemon * param2);
void ov104_0222E1D8(GraphicElementData * param0, u8 param1);
void ov104_0222E204(GraphicElementData * param0, s16 param1, s16 param2, u8 param3);
u8 ov104_0222E240(u16 param0, u16 param1);
void ov104_0222E278(UnkStruct_ov104_0223A348 * param0, u16 param1, int param2, int param3);
void ov104_0222E284(BattleParams * param0, UnkStruct_ov104_0223A348_sub1 * param1, int param2, int param3, int param4);
u32 ov104_0222E2F0(UnkStruct_ov104_0223A348_sub2 * param0, u16 param1, int param2, u8 param3, u32 param4, int param5, int param6);
u8 ov104_0222E3A8(u16 param0);
BOOL ov104_0222E3E4(UnkStruct_0204B184 * param0, const u16 param1[], const u16 param2[], int param3, int param4, u16 param5[], int param6);
void ov104_0222E4BC(u8 param0, u16 param1, u16 param2, u16 * param3, UnkStruct_ov104_0223A348_sub2 * param4, u8 * param5, u32 * param6, u8 param7);

static const u16 Unk_ov104_0223F298[][2] = {
    {0x5A, 0x8D},
    {0x5B, 0x8E},
    {0x5C, 0x8f},
    {0x5D, 0x90},
    {0x5E, 0x91},
    {0x2, 0x4},
    {0x3, 0x6},
    {0x3C, 0x3},
    {0x3D, 0x8},
    {0x20, 0x3E},
    {0x21, 0x3f},
    {0x4, 0x34},
    {0x5, 0x35},
    {0x2C, 0x1},
    {0x2D, 0x2},
    {0x14, 0xf},
    {0x15, 0x10},
    {0x51, 0x3B},
    {0x1A, 0x3C},
    {0x10, 0x9},
    {0x11, 0xC},
    {0x53, 0x17},
    {0x54, 0x16},
    {0x47, 0x29},
    {0x12, 0x2A},
    {0xC, 0x26},
    {0xD, 0x27},
    {0xE, 0x33},
    {0xA, 0x7},
    {0x1B, 0x11},
    {0x23, 0x25},
    {0x31, 0x46},
    {0x32, 0x46},
    {0x27, 0xB},
    {0x28, 0xE},
    {0x18, 0xB},
    {0x19, 0xE},
    {0x35, 0x44},
    {0x36, 0x45},
    {0x1D, 0xB},
    {0x6, 0x5},
    {0x1C, 0x1},
    {0x13, 0x2D},
    {0xB, 0x36},
    {0x2E, 0x38},
    {0x9, 0x14},
    {0x30, 0x32},
    {0x34, 0xA},
    {0x25, 0x13},
    {0x39, 0x1f},
    {0x29, 0x1D},
    {0x22, 0x24},
    {0x3B, 0x28},
    {0x3A, 0x2B},
    {0x26, 0x22},
    {0x33, 0x3E},
    {0x1E, 0xE},
    {0x50, 0x37},
    {0x24, 0xD},
    {0x7, 0xC},
    {0x55, 0x23},
    {0xF, 0x2C},
    {0x16, 0x47}
};

UnkStruct_0204B184 * ov104_0222DCE0 (u16 param0, int param1, int param2)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(param2, param0, param1);
}

void ov104_0222DCF4 (UnkStruct_0204B1E8 * param0, int param1, int param2)
{
    NARC_ReadWholeMemberByIndexPair(param0, param2, param1);
}

UnkStruct_0204B184 * ov104_0222DD04 (UnkStruct_ov104_0223A348_sub1 * param0, int param1, int param2, int param3)
{
    UnkStruct_0204B184 * v0;
    MessageLoader * v1 = MessageLoader_Init(1, 26, 21, param2);
    Strbuf* v2;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223A348_sub1));

    v0 = ov104_0222DCE0(param1, param2, param3);

    param0->unk_00 = param1;
    param0->unk_18[0] = 0xFFFF;
    param0->unk_18[1] = param1 * 3;
    param0->unk_04 = v0->unk_00;

    v2 = MessageLoader_GetNewStrbuf(v1, param1);

    Strbuf_ToChars(v2, &param0->unk_08[0], 8);
    Strbuf_Free(v2);
    MessageLoader_Free(v1);

    return v0;
}

static const u16 Unk_ov104_0223F290[] = {
    0xD5,
    0x9D,
    0xEA,
    0xD9
};

u32 ov104_0222DD6C (UnkStruct_ov104_0223A348_sub2 * param0, u16 param1, u32 param2, u32 param3, u8 param4, u8 param5, BOOL param6, int param7, int param8)
{
    int v0;
    int v1;
    u32 v2;
    u8 v3;
    UnkStruct_0204B1E8 v4;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223A348_sub2));
    ov104_0222DCF4(&v4, param1, param8);

    param0->unk_00_val1_0 = v4.unk_00;
    param0->unk_00_val1_11 = v4.unk_0E;

    if (param6) {
        if (param5 >= NELEMS(Unk_ov104_0223F290)) {
            param5 %= NELEMS(Unk_ov104_0223F290);
        }

        param0->unk_02 = Unk_ov104_0223F290[param5];
    } else {
        param0->unk_02 = v4.unk_0C;
    }

    v3 = 255;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_04[v0] = v4.unk_02[v0];

        if (v4.unk_02[v0] == 218) {
            v3 = 0;
        }
    }

    param0->unk_0C = param2;

    if (param3 == 0) {
        do {
            v2 = (LCRNG_Next() | LCRNG_Next() << 16);
        } while ((v4.unk_0B != Pokemon_GetNatureOf(v2)) || (Pokemon_IsPersonalityShiny(param2, v2) == 1));

        param0->unk_10 = v2;
    } else {
        param0->unk_10 = param3;
        v2 = param3;
    }

    param0->unk_14_val1_0 = param4;
    param0->unk_14_val1_5 = param4;
    param0->unk_14_val1_10 = param4;
    param0->unk_14_val1_15 = param4;
    param0->unk_14_val1_20 = param4;
    param0->unk_14_val1_25 = param4;

    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (v4.unk_0A & FlagIndex(v0)) {
            v1++;
        }
    }

    if ((510 / v1) > 255) {
        v1 = 255;
    } else {
        v1 = 510 / v1;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (v4.unk_0A & FlagIndex(v0)) {
            param0->unk_18_val2[v0] = v1;
        }
    }

    param0->unk_1E_val2 = 0;
    param0->unk_1F = Unk_020E4C44;

    v0 = PokemonPersonalData_GetSpeciesValue(param0->unk_00_val1_0, 25);

    if (v0) {
        if (param0->unk_10 & 1) {
            param0->unk_20 = v0;
        } else {
            param0->unk_20 = PokemonPersonalData_GetSpeciesValue(param0->unk_00_val1_0, 24);
        }
    } else {
        param0->unk_20 = PokemonPersonalData_GetSpeciesValue(param0->unk_00_val1_0, 24);
    }

    param0->unk_21 = v3;
    MessageLoader_GetSpeciesName(param0->unk_00_val1_0, param7, &(param0->unk_22[0]));

    return v2;
}

void ov104_0222DF40 (const UnkStruct_ov104_0223A348_sub2 * param0, Pokemon * param1, u8 param2)
{
    int v0;
    u32 v1;
    u8 v2, v3, v4;
    u16 v5;
    u32 v6;

    Pokemon_Init(param1);

    if (param2 == 120) {
        v4 = 50;
    } else if (param2 == 121) {
        v4 = 100;
    } else {
        v4 = param2;
    }

    v1 = (param0->unk_14_val2 & 0x3FFFFFFF);

    Pokemon_InitWith(param1, param0->unk_00_val1_0, v4, v1, 1, param0->unk_10, 2, 0);
    Pokemon_SetValue(param1, 175, &v1);
    Pokemon_CalcLevelAndStats(param1);

    v2 = param0->unk_00_val1_11;

    Pokemon_SetValue(param1, 112, &v2);
    Pokemon_SetValue(param1, 6, &param0->unk_02);

    for (v0 = 0; v0 < 4; v0++) {
        v5 = param0->unk_04[v0];
        Pokemon_SetValue(param1, 54 + v0, &v5);

        v2 = (param0->unk_1E_val2 >> (v0 * 2)) & 0x3;
        Pokemon_SetValue(param1, 62 + v0, &v2);

        v3 = (u8)Pokemon_GetValue(param1, MON_DATA_MOVE1_MAX_PP + v0, NULL);
        Pokemon_SetValue(param1, 58 + v0, &v3);
    }

    v6 = param0->unk_0C;
    Pokemon_SetValue(param1, 7, &v6);

    v2 = param0->unk_18_val1_00;
    Pokemon_SetValue(param1, 13, &v2);

    v2 = param0->unk_18_val1_01;
    Pokemon_SetValue(param1, 14, &v2);

    v2 = param0->unk_18_val1_02;
    Pokemon_SetValue(param1, 15, &v2);

    v2 = param0->unk_18_val1_03;
    Pokemon_SetValue(param1, 16, &v2);

    v2 = param0->unk_18_val1_04;
    Pokemon_SetValue(param1, 17, &v2);

    v2 = param0->unk_18_val1_05;
    Pokemon_SetValue(param1, 18, &v2);

    Pokemon_SetValue(param1, 10, &param0->unk_20);
    Pokemon_SetValue(param1, 9, &param0->unk_21);

    if (param0->unk_14_val1_30) {
        MessageLoader * v7;
        Strbuf* v8;

        v7 = MessageLoader_Init(1, 26, 412, 4);
        v8 = MessageLoader_GetNewStrbuf(v7, param0->unk_00_val1_0);

        Pokemon_SetValue(param1, 119, v8);
        Strbuf_Free(v8);
        MessageLoader_Free(v7);
    } else {
        Pokemon_SetValue(param1, 117, param0->unk_22);
    }

    Pokemon_SetValue(param1, 12, &param0->unk_1F);
    Pokemon_CalcLevelAndStats(param1);
}

u16 ov104_0222E10C (u8 param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < (NELEMS(Unk_ov104_0223F298)); v0++) {
        if (Unk_ov104_0223F298[v0][0] == param0) {
            return Unk_ov104_0223F298[v0][1];
        }
    }

    return 0x3;
}

void ov104_0222E134(SaveData * param0, Pokemon * param1);

void ov104_0222E134 (SaveData * param0, Pokemon * param1)
{
    u32 v0;
    Strbuf* v1;
    MessageLoader * v2;
    int v3;
    int v4 = 0;
    TrainerInfo * v5 = SaveData_GetTrainerInfo(param0);

    v0 = Pokemon_GetValue(param1, MON_DATA_OT_ID, NULL);
    Pokemon_UpdateAfterCatch(param1, SaveData_GetTrainerInfo(param0), 4, 0, 0, 11);

    v3 = MapHeader_GetMapLabelTextID(562);
    sub_0209304C(param1, v5, v4, v3, 11);

    v2 = MessageLoader_Init(0, 26, 363, 11);
    v1 = MessageLoader_GetNewStrbuf(v2, 0);

    Pokemon_SetValue(param1, 145, v1);
    Pokemon_SetValue(param1, 7, &v0);

    Strbuf_Free(v1);
    MessageLoader_Free(v2);

    return;
}

void ov104_0222E1C0 (SaveData * param0, Party * param1, Pokemon * param2)
{
    ov104_0222E134(param0, param2);
    Party_AddPokemon(param1, param2);
    return;
}

void ov104_0222E1D8 (GraphicElementData * param0, u8 param1)
{
    if (sub_02021E24(param0) == param1) {
        return;
    }

    SpriteActor_SetAnimFrame(param0, 0);
    SpriteActor_SetSpriteAnimActive(param0, param1);
    sub_02021E2C(param0, FX32_ONE);
    return;
}

void ov104_0222E204 (GraphicElementData * param0, s16 param1, s16 param2, u8 param3)
{
    VecFx32 v0;

    v0.x = param1 * FX32_ONE;
    v0.y = param2 * FX32_ONE;
    v0.z = 0;

    if (param3 == 1) {
        if (sub_02021E74(param0) == 0) {
            v0.y = (param2 - 3) * FX32_ONE;
        } else {
            v0.y = (param2 + 1) * FX32_ONE;
        }
    }

    sub_02021C50(param0, &v0);
    return;
}

u8 ov104_0222E240 (u16 param0, u16 param1)
{
    switch (HealthBar_Color(param0, param1, 48)) {
    case 4:
        return 1;
    case 3:
        return 2;
    case 2:
        return 3;
    case 1:
        return 4;
    }

    return 1;
}

void ov104_0222E278 (UnkStruct_ov104_0223A348 * param0, u16 param1, int param2, int param3)
{
    UnkStruct_0204B184 * v0;

    v0 = ov104_0222DD04(&param0->unk_00, param1, param2, param3);
    Heap_FreeToHeap(v0);

    return;
}

void ov104_0222E284 (BattleParams * param0, UnkStruct_ov104_0223A348_sub1 * param1, int param2, int param3, int param4)
{
    Sentence * v0;
    Pokemon * v1;

    param0->trainerIDs[param3] = param1->unk_00;
    param0->trainerData[param3].class = param1->unk_04;

    GF_strcpy(&param0->trainerData[param3].name[0], &param1->unk_08[0]);

    v0 = (Sentence *)&param1->unk_20[0];
    param0->trainerData[param3].winMsg = *v0;

    v0 = (Sentence *)&param1->unk_28[0];
    param0->trainerData[param3].loseMsg = *v0;

    return;
}

u32 ov104_0222E2F0 (UnkStruct_ov104_0223A348_sub2 * param0, u16 param1, int param2, u8 param3, u32 param4, int param5, int param6)
{
    u32 v0, v1, v2;

    v0 = LCRNG_Next() | (LCRNG_Next() << 16);
    v2 = ov104_0222DD6C(param0, param1, v0, param4, param3, param2, 0, param5, param6);

    return v2;
}

void ov104_0222E330 (UnkStruct_ov104_0223A348_sub2 * param0, u16 param1[], u8 param2[], u32 param3[], u32 param4[], int param5, int param6, int param7)
{
    int v0;
    u32 v1;
    u8 v2;

    if (param3 == NULL) {
        v1 = 0;
    }

    for (v0 = 0; v0 < param5; v0++) {
        v2 = (param2 == NULL) ? 0 : param2[v0];
        v1 = (param3 == NULL) ? 0 : param3[v0];
        v1 = ov104_0222E2F0(&param0[v0], param1[v0], v0, v2, v1, param6, param7);

        if (param4 != NULL) {
            param4[v0] = v1;
        }
    }

    return;
}

u8 ov104_0222E3A8 (u16 param0)
{
    u8 v0;

    if (param0 < 100) {
        v0 = (0x1f / 8) * 1;
    } else if (param0 < 120) {
        v0 = (0x1f / 8) * 2;
    } else if (param0 < 140) {
        v0 = (0x1f / 8) * 3;
    } else if (param0 < 160) {
        v0 = (0x1f / 8) * 4;
    } else if (param0 < 180) {
        v0 = (0x1f / 8) * 5;
    } else if (param0 < 200) {
        v0 = (0x1f / 8) * 6;
    } else if (param0 < 220) {
        v0 = (0x1f / 8) * 7;
    } else {
        v0 = 0x1f;
    }

    return v0;
}

BOOL ov104_0222E3E4 (UnkStruct_0204B184 * param0, const u16 param1[], const u16 param2[], int param3, int param4, u16 param5[], int param6)
{
    int v0, v1, v2;
    UnkStruct_0204B1E8 v3[6];
    int v4, v5;

    GF_ASSERT(param4 <= 6);

    v0 = 0;
    v2 = 0;

    while (v0 != param4) {
        v5 = (LCRNG_Next() % param0->unk_02);
        v1 = param0->unk_04[v5];

        ov104_0222DCF4(&v3[v0], v1, 179);

        for (v4 = 0; v4 < v0; v4++) {
            if ((v3[v4].unk_00 == v3[v0].unk_00) || (v3[v4].unk_0C == v3[v0].unk_0C)) {
                break;
            }
        }

        if (v4 != v0) {
            continue;
        }

        if (v2 < 50) {
            for (v4 = 0; v4 < param3; v4++) {
                if ((v3[v0].unk_00 == param1[v4]) || (v3[v0].unk_0C == param2[v4])) {
                    break;
                }
            }

            if (v4 != param3) {
                v2++;
                continue;
            }
        }

        param5[v0] = v1;
        v0++;
    }

    if (v2 >= 50) {
        return 1;
    }

    return 0;
}

void ov104_0222E4BC (u8 param0, u16 param1, u16 param2, u16 * param3, UnkStruct_ov104_0223A348_sub2 * param4, u8 * param5, u32 * param6, u8 param7)
{
    int v0;
    UnkStruct_ov104_0223A348_sub2 v1;
    u16 v2[4];
    u16 v3[4];
    UnkStruct_ov104_0223A348_sub1 v4;
    UnkStruct_0204B184 * v5;
    UnkStruct_0204B1E8 v6;

    v5 = ov104_0222DD04(&v4, param1, 11, 178);

    for (v0 = 0; v0 < param0; v0++) {
        param5[v0] = ov104_0222E3A8(param1);
    }

    if (param7 == 0) {
        ov104_0222E3E4(v5, v2, v3, 0, param0, param3, 11);
    } else {
        ov104_0222E3E4(v5, v2, v3, 0, (param0 / 2), param3, 11);

        for (v0 = 0; v0 < (param0 / 2); v0++) {
            ov104_0222DCF4(&v6, param3[v0], 179);
            v2[v0] = v6.unk_00;
            v3[v0] = v6.unk_0C;
        }

        Heap_FreeToHeap(v5);
        v5 = ov104_0222DD04(&v4, param2, 11, 178);
        ov104_0222E3E4(v5, v2, v3, (param0 / 2), (param0 / 2), &param3[param0 / 2], 11);

        for (v0 = 0; v0 < (param0 / 2); v0++) {
            param5[v0 + (param0 / 2)] = ov104_0222E3A8(param2);
        }
    }

    Heap_FreeToHeap(v5);
    ov104_0222E330(param4, param3, param5, NULL, param6, param0, 11, 179);

    return;
}

void ov104_0222E5D0 (StringFormatter * param0, u32 param1)
{
    sub_0200B498(param0, param1, CommInfo_TrainerInfo((CommSys_CurNetId() ^ 1)));
    return;
}

int ov104_0222E5F0 (const TrainerInfo * param0)
{
    u32 v0;
    int v1, v2;

    v0 = TrainerInfo_Gender(param0);
    v2 = TrainerInfo_GameCode(param0);

    switch (v2) {
    case 12:
    case 7:
    case 8:
    default:
        v1 = (v0 == 0) ? 0x0 : 0x61;
        break;
    case 0:
        v1 = (v0 == 0) ? 0xfc : 0xfd;
        break;
    }

    return v1;
}

void ov104_0222E630 (SaveData * param0)
{
    UnkStruct_0202C878 * v0 = sub_0202C878(param0);

    sub_02038F8C(v0);
    return;
}
