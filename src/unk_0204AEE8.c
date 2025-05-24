#include "unk_0204AEE8.h"

#include <nitro.h>
#include <string.h>

#include "generated/species_data_params.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0204B184.h"
#include "struct_defs/struct_0204B1E8.h"
#include "struct_defs/struct_0204B404.h"

#include "field/field_system.h"
#include "overlay104/struct_ov104_0223A348.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"

#include "assert.h"
#include "communication_system.h"
#include "flags.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0202D05C.h"
#include "unk_02049D08.h"

static BOOL sub_0204B470(UnkStruct_0204AFC4 *param0, UnkStruct_0204B184 *param1, u16 param2, UnkStruct_ov104_0223A348_sub2 *param3, u8 param4, u16 *param5, u16 *param6, UnkStruct_0204B404 *param7, int param8);
static void *sub_0204B630(u16 param0, int param1);
static void sub_0204B640(UnkStruct_0204B1E8 *param0, int param1);

static const u16 Unk_020EBD98[][2] = {
    { 0x5A, 0x8D },
    { 0x5B, 0x8E },
    { 0x5C, 0x8f },
    { 0x5D, 0x90 },
    { 0x5E, 0x91 },
    { 0x2, 0x4 },
    { 0x3, 0x6 },
    { 0x3C, 0x3 },
    { 0x3D, 0x8 },
    { 0x20, 0x3E },
    { 0x21, 0x3f },
    { 0x4, 0x34 },
    { 0x5, 0x35 },
    { 0x2C, 0x1 },
    { 0x2D, 0x2 },
    { 0x14, 0xf },
    { 0x15, 0x10 },
    { 0x51, 0x3B },
    { 0x1A, 0x3C },
    { 0x10, 0x9 },
    { 0x11, 0xC },
    { 0x53, 0x17 },
    { 0x54, 0x16 },
    { 0x47, 0x29 },
    { 0x12, 0x2A },
    { 0xC, 0x26 },
    { 0xD, 0x27 },
    { 0xE, 0x33 },
    { 0xA, 0x7 },
    { 0x1B, 0x11 },
    { 0x23, 0x25 },
    { 0x31, 0x46 },
    { 0x32, 0x46 },
    { 0x27, 0xB },
    { 0x28, 0xE },
    { 0x18, 0xB },
    { 0x19, 0xE },
    { 0x35, 0x44 },
    { 0x36, 0x45 },
    { 0x1D, 0xB },
    { 0x6, 0x5 },
    { 0x1C, 0x1 },
    { 0x13, 0x2D },
    { 0xB, 0x36 },
    { 0x2E, 0x38 },
    { 0x9, 0x14 },
    { 0x30, 0x32 },
    { 0x34, 0xA },
    { 0x25, 0x13 },
    { 0x39, 0x1f },
    { 0x29, 0x1D },
    { 0x22, 0x24 },
    { 0x3B, 0x28 },
    { 0x3A, 0x2B },
    { 0x26, 0x22 },
    { 0x33, 0x3E },
    { 0x1E, 0xE },
    { 0x50, 0x37 },
    { 0x24, 0xD },
    { 0x7, 0xC },
    { 0x55, 0x23 },
    { 0xF, 0x2C },
    { 0x16, 0x47 }
};

StringTemplate *sub_0204AEE8(SaveData *saveData, u16 param1, u16 param2, u8 param3, u8 *param4)
{
    u8 v0;
    u16 v1;
    Strbuf *v2, *v3;
    Pokedex *pokedex;
    StringTemplate *v5;
    MessageLoader *v6;

    v2 = Strbuf_Init(12 + 2, HEAP_ID_FIELD);
    v3 = Strbuf_Init(2, HEAP_ID_FIELD);
    pokedex = SaveData_GetPokedex(saveData);
    v6 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD);
    v5 = StringTemplate_New(18 + 1, 12 + 2, HEAP_ID_FIELD);

    StringTemplate_SetNumber(v5, 0, param1, 1, 0, 1);

    for (v0 = 0; v0 < 18; v0++) {
        v1 = sub_02078824(v0);

        if (Pokedex_HasSeenSpecies(pokedex, v1)) {
            MessageLoader_GetStrbuf(v6, v1, v2);
            StringTemplate_SetStrbuf(v5, (*param4) + 1, v2, param2, param3, GAME_LANGUAGE);
            (*param4)++;
        }
    }

    MessageLoader_Free(v6);
    Strbuf_Free(v3);
    Strbuf_Free(v2);

    return v5;
}

u16 sub_0204AF9C(u8 param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < (NELEMS(Unk_020EBD98)); v0++) {
        if (Unk_020EBD98[v0][0] == param0) {
            return Unk_020EBD98[v0][1];
        }
    }

    return 0x3;
}

u16 sub_0204AFC4(FieldSystem *fieldSystem, const u16 *param1)
{
    u16 v0 = 0;
    UnkStruct_0204AFC4 *v1 = fieldSystem->unk_AC;

    v1->unk_12 = (u8)param1[0];
    v1->unk_16[0] = param1[1];
    v1->unk_16[1] = param1[2];
    v1->unk_14 = param1[3];
    v1->unk_10_5 = 5 + v1->unk_12;

    if ((v1->unk_2E[0] == v1->unk_16[0]) || (v1->unk_2E[0] == v1->unk_16[1])) {
        v0 += 1;
    }

    if ((v1->unk_2E[1] == v1->unk_16[0]) || (v1->unk_2E[1] == v1->unk_16[1])) {
        v0 += 2;
    }

    return v0;
}

u16 sub_0204B020(FieldSystem *fieldSystem, const u16 *param1)
{
    int v0;
    UnkStruct_0204AFC4 *v1 = fieldSystem->unk_AC;

    if (CommSys_CurNetId() == 0) {
        return 0;
    }

    MI_CpuCopy8(param1, v1->unk_3E, 14 * 2);
    return 1;
}

u16 sub_0204B044(FieldSystem *fieldSystem, const u16 *param1)
{
    int v0;
    UnkStruct_0204AFC4 *v1 = fieldSystem->unk_AC;

    if (v1->unk_10_3 || param1[0]) {
        return 1;
    }

    return 0;
}

void sub_0204B060(UnkStruct_0204AFC4 *param0, SaveData *saveData)
{
    int v0;
    Party *v1;
    Pokemon *v2;
    TrainerInfo *v3 = SaveData_GetTrainerInfo(saveData);

    param0->unk_83E[0] = TrainerInfo_Gender(v3);
    v1 = SaveData_GetParty(saveData);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_83E[1 + v0] = Pokemon_GetValue(Party_GetPokemonBySlotIndex(v1, param0->unk_2A[v0]), MON_DATA_SPECIES, NULL);
    }

    param0->unk_83E[3] = sub_0202D3B4(param0->unk_74, 3, 0);
}

void sub_0204B0BC(UnkStruct_0204AFC4 *param0)
{
    MI_CpuCopy8(param0->unk_3E, param0->unk_83E, 14 * 2);
}

void sub_0204B0D4(UnkStruct_0204AFC4 *param0, u16 param1)
{
    param0->unk_10_3 = param1;
    param0->unk_83E[0] = param1;
}

static const u16 Unk_020EBD58[][2] = {
    { 0x0, 0x63 },
    { 0x50, 0x77 },
    { 0x64, 0x8B },
    { 0x78, 0x9F },
    { 0x8C, 0xB3 },
    { 0xA0, 0xC7 },
    { 0xB4, 0xDB },
    { 0xC8, 0x12B }
};

static const u16 Unk_020EBD78[][2] = {
    { 0x64, 0x77 },
    { 0x78, 0x8B },
    { 0x8C, 0x9F },
    { 0xA0, 0xB3 },
    { 0xB4, 0xC7 },
    { 0xC8, 0xDB },
    { 0xDC, 0xEF },
    { 0xC8, 0x12B }
};

u16 sub_0204B0F0(UnkStruct_0204AFC4 *param0, u8 param1, u8 param2, int param3)
{
    u16 v0;

    if (param3 == 0) {
        if ((param1 == 2) && (param2 == 6)) {
            return 305;
        }

        if ((param1 == 6) && (param2 == 6)) {
            return 306;
        }
    }

    if (param1 < 7) {
        if (param2 == (7 - 1)) {
            v0 = (Unk_020EBD78[param1][1] - Unk_020EBD78[param1][0]) + 1;
            v0 = Unk_020EBD78[param1][0] + (sub_0204AEC0(param0) % v0);
        } else {
            v0 = (Unk_020EBD58[param1][1] - Unk_020EBD58[param1][0]) + 1;
            v0 = Unk_020EBD58[param1][0] + (sub_0204AEC0(param0) % v0);
        }
    } else {
        v0 = (Unk_020EBD58[7][1] - Unk_020EBD58[7][0]) + 1;
        v0 = Unk_020EBD58[7][0] + (sub_0204AEC0(param0) % v0);
    }

    return v0;
}

static UnkStruct_0204B184 *sub_0204B184(UnkStruct_ov104_0223A348 *param0, u16 param1, int param2)
{
    UnkStruct_0204B184 *v0;
    MessageLoader *v1 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FRONTIER_TRAINER_NAMES, param2);
    Strbuf *v2;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223A348));

    v0 = sub_0204B630(param1, param2);

    param0->unk_00.unk_00 = param1;
    param0->unk_00.unk_18[0] = 0xFFFF;
    param0->unk_00.unk_18[1] = param1 * 3;
    param0->unk_00.unk_04 = v0->unk_00;

    v2 = MessageLoader_GetNewStrbuf(v1, param1);

    Strbuf_ToChars(v2, &param0->unk_00.unk_08[0], 8); // Possibly TRAINER_NAME_LEN + 1
    Strbuf_Free(v2);
    MessageLoader_Free(v1);

    return v0;
}

static const u16 Unk_020EBD50[] = {
    0xD5,
    0x9D,
    0xEA,
    0xD9
};

static u32 sub_0204B1E8(UnkStruct_0204AFC4 *param0, UnkStruct_ov104_0223A348_sub2 *param1, u16 param2, u32 param3, u32 param4, u8 param5, u8 param6, BOOL param7, int param8)
{
    int v0;
    int v1;
    u32 v2;
    u8 v3;
    UnkStruct_0204B1E8 v4;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov104_0223A348_sub2));
    sub_0204B640(&v4, param2);

    param1->unk_00_val1_0 = v4.unk_00;
    param1->unk_00_val1_11 = v4.unk_0E;

    if (param7) {
        param1->unk_02 = Unk_020EBD50[param6];
    } else {
        param1->unk_02 = v4.unk_0C;
    }

    v3 = 255;

    for (v0 = 0; v0 < 4; v0++) {
        param1->unk_04[v0] = v4.unk_02[v0];

        if (v4.unk_02[v0] == 218) {
            v3 = 0;
        }
    }

    param1->unk_0C = param3;

    if (param4 == 0) {
        do {
            v2 = (sub_0204AEC0(param0) | sub_0204AEC0(param0) << 16);
        } while ((v4.unk_0B != Pokemon_GetNatureOf(v2)) || (Pokemon_IsPersonalityShiny(param3, v2) == 1));

        param1->unk_10 = v2;
    } else {
        param1->unk_10 = param4;
        v2 = param4;
    }

    param1->unk_14_val1_0 = param5;
    param1->unk_14_val1_5 = param5;
    param1->unk_14_val1_10 = param5;
    param1->unk_14_val1_15 = param5;
    param1->unk_14_val1_20 = param5;
    param1->unk_14_val1_25 = param5;

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
            param1->unk_18_val2[v0] = v1;
        }
    }

    param1->unk_1E_val2 = 0;
    param1->unk_1F = gGameLanguage;

    v0 = SpeciesData_GetSpeciesValue(param1->unk_00_val1_0, SPECIES_DATA_ABILITY_2);

    if (v0) {
        if (param1->unk_10 & 1) {
            param1->unk_20 = v0;
        } else {
            param1->unk_20 = SpeciesData_GetSpeciesValue(param1->unk_00_val1_0, SPECIES_DATA_ABILITY_1);
        }
    } else {
        param1->unk_20 = SpeciesData_GetSpeciesValue(param1->unk_00_val1_0, SPECIES_DATA_ABILITY_1);
    }

    param1->unk_21 = v3;
    MessageLoader_GetSpeciesName(param1->unk_00_val1_0, param8, &(param1->unk_22[0]));

    return v2;
}

BOOL sub_0204B3B8(UnkStruct_0204AFC4 *param0, UnkStruct_ov104_0223A348 *param1, u16 param2, int param3, u16 *param4, u16 *param5, UnkStruct_0204B404 *param6, int param7)
{
    BOOL v0 = 0;
    UnkStruct_0204B184 *v1 = sub_0204B184(param1, param2, param7);
    v0 = sub_0204B470(param0, v1, param2, &param1->unk_30[0], param3, param4, param5, param6, param7);

    Heap_FreeToHeap(v1);

    return v0;
}

void sub_0204B404(UnkStruct_0204AFC4 *param0, UnkStruct_ov104_0223A348 *param1, u16 param2, BOOL param3, const UnkStruct_0204B404 *param4, int heapID)
{
    int v0;
    u8 v1 = 0;
    UnkStruct_0204B184 *v2 = sub_0204B184(param1, param2, heapID);
    v1 = sub_0204AE84(param2);

    for (v0 = 0; v0 < 2; v0++) {
        sub_0204B1E8(param0, &(param1->unk_30[v0]), param4->unk_04[v0], param4->unk_00, param4->unk_08[v0], v1, v0, param3, heapID);
    }

    Heap_FreeToHeap(v2);
}

static BOOL sub_0204B470(UnkStruct_0204AFC4 *param0, UnkStruct_0204B184 *param1, u16 param2, UnkStruct_ov104_0223A348_sub2 *param3, u8 param4, u16 *param5, u16 *param6, UnkStruct_0204B404 *param7, int param8)
{
    int v0, v1;
    u8 v2;
    u8 v3;
    u32 v4;
    int v5;
    int v6[4];
    u32 v7[4];
    int v8;
    int v9;
    BOOL v10 = 0;
    UnkStruct_0204B1E8 v11;
    UnkStruct_0204B1E8 v12;

    GF_ASSERT(param4 <= 4);

    v8 = 0;
    v9 = 0;

    while (v8 != param4) {
        v3 = sub_0204AEC0(param0) % param1->unk_02;
        v5 = param1->unk_04[v3];

        sub_0204B640(&v12, v5);

        for (v0 = 0; v0 < v8; v0++) {
            sub_0204B640(&v11, v6[v0]);

            if (v11.unk_00 == v12.unk_00) {
                break;
            }
        }

        if (v0 != v8) {
            continue;
        }

        if (param5 != NULL) {
            for (v0 = 0; v0 < param4; v0++) {
                if (param5[v0] == v12.unk_00) {
                    break;
                }
            }

            if (v0 != param4) {
                continue;
            }
        }

        if (v9 < 50) {
            for (v0 = 0; v0 < v8; v0++) {
                sub_0204B640(&v11, v6[v0]);

                if ((v11.unk_0C) && (v11.unk_0C == v12.unk_0C)) {
                    break;
                }
            }

            if (v0 != v8) {
                v9++;
                continue;
            }

            if (param6 != NULL) {
                for (v0 = 0; v0 < param4; v0++) {
                    if ((param6[v0] == v12.unk_0C) && (param6[v0] != 0)) {
                        break;
                    }
                }

                if (v0 != param4) {
                    v9++;
                    continue;
                }
            }
        }

        v6[v8] = v5;
        v8++;
    }

    v2 = sub_0204AE84(param2);
    v4 = (sub_0204AEC0(param0) | (sub_0204AEC0(param0) << 16));

    if (v9 >= 50) {
        v10 = 1;
    }

    for (v0 = 0; v0 < v8; v0++) {
        v7[v0] = sub_0204B1E8(param0, &(param3[v0]), v6[v0], v4, 0, v2, v0, v10, param8);
    }

    if (param7 == NULL) {
        return v10;
    }

    param7->unk_00 = v4;

    for (v0 = 0; v0 < 2; v0++) {
        param7->unk_04[v0] = v6[v0];
        param7->unk_08[v0] = v7[v0];
    }

    return v10;
}

static void *sub_0204B630(u16 param0, int param1)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR, param0, param1);
}

static void sub_0204B640(UnkStruct_0204B1E8 *param0, int param1)
{
    NARC_ReadWholeMemberByIndexPair(param0, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM, param1);
}
