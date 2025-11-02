#include "overlay104/ov104_0223A0C4.h"

#include <nitro.h>
#include <string.h>

#include "generated/battle_tower_modes.h"
#include "generated/species_data_params.h"

#include "struct_defs/battle_frontier_pokemon_data.h"
#include "struct_defs/struct_0202D764.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0204B404.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "communication_information.h"
#include "field_battle_data_transfer.h"
#include "flags.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0202D05C.h"
#include "unk_02049D08.h"

const FrontierPokemonDataDTO Unk_ov104_0223FE30[] = {
    {
        0x1,
        0x0,
        0xEA,
        { 0x16, 0x4B, 0xEB, 0x4C },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x86, 0x68, 0x5f, 0x71, 0x7E, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x4,
        0x0,
        0xFD,
        { 0x34, 0x53, 0x35, 0x7E },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x83, 0x79, 0x5C, 0x63, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x7,
        0x0,
        0xF3,
        { 0x37, 0x39, 0x160, 0x38 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x6D, 0x7C, 0x5D, 0x92, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x7B,
        0x0,
        0xDD,
        { 0x13E, 0xD3, 0x68, 0x13A },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x6A, 0x79, 0x9A, 0x55, 0x60, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x16B,
        0x0,
        0xF6,
        { 0x12D, 0x160, 0x102, 0xBD },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x70, 0x8f, 0x67, 0x9A, 0x68, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x51,
        0x0,
        0x99,
        { 0x15F, 0x30, 0x13F, 0x73 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x64, 0x55, 0x9C, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x12C,
        0x0,
        0xD9,
        { 0x2F, 0x139, 0xCC, 0x3 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x59, 0x7E, 0x64, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x128,
        0x0,
        0xE8,
        { 0xFC, 0x45, 0xC5, 0x12 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x8f, 0x60, 0x7f, 0x68, 0x70, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0xA7,
        0x0,
        0xC9,
        { 0x144, 0x65, 0xA9, 0xB8 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x55, 0x79, 0x8f, 0x9C, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x1B,
        0x0,
        0xED,
        { 0x5B, 0x13D, 0xC9, 0x1C },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x66, 0xA1, 0x7A, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x114,
        0x0,
        0xCB,
        { 0x13, 0x62, 0x11B, 0x74 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x6A, 0x81, 0x92, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x66,
        0x0,
        0x97,
        { 0x5D, 0xF6, 0x49, 0x71 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x70, 0x8f, 0x70, 0x8f, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x4A,
        0x0,
        0xE6,
        { 0xDE, 0x15E, 0x46, 0xB6 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x55, 0x68, 0x75, 0x87, 0x77, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0xC8,
        0x0,
        0xD5,
        { 0xDC, 0xF7, 0x6D, 0x56 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x91, 0x57, 0x8f, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x173,
        0x0,
        0x9D,
        { 0xE1, 0x1D, 0x118, 0xB8 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x70, 0x75, 0x8A, 0x55, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0xE4,
        0x0,
        0xF9,
        { 0xF2, 0x34, 0x2E, 0xB6 },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x78, 0x9C, 0x84, 0x9C, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    },
    {
        0x131,
        0x0,
        0x9E,
        { 0xE8, 0x13D, 0x14E, 0x6A },
        0x12345678,
        0x98765432,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x1F,
        0x0,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xFF,
        { 0x64, 0x7A, 0x9A, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff },
    }
};

const FrontierTrainerDataDTO Unk_ov104_0223FCE0[] = {
    {
        0x12345678,
        0x2,
        0x0,
        { 0x71, 0x90, 0xf1, 0xA2, 0xA3, 0xffff, 0xffff, 0xffff },
        { 0xFFFF, 0x0, 0x0, 0x0 },
        { 0xFFFF, 0x1, 0x0, 0x0 },
        { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        0x12345678,
        0x9,
        0x0,
        { 0x71, 0x90, 0xf1, 0xA2, 0xA4, 0xffff, 0xffff, 0xffff },
        { 0xFFFF, 0x3, 0x0, 0x0 },
        { 0xFFFF, 0x1, 0x0, 0x0 },
        { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        0x12345678,
        0xB,
        0x0,
        { 0x71, 0x90, 0xf1, 0xA2, 0xA5, 0xffff, 0xffff, 0xffff },
        { 0xFFFF, 0x6, 0x0, 0x0 },
        { 0xFFFF, 0x1, 0x0, 0x0 },
        { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        0x12345678,
        0x1E,
        0x0,
        { 0x71, 0x90, 0xf1, 0xA2, 0xA6, 0xffff, 0xffff, 0xffff },
        { 0xFFFF, 0x9, 0x0, 0x0 },
        { 0xFFFF, 0x1, 0x0, 0x0 },
        { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        0x12345678,
        0x55,
        0x0,
        { 0x71, 0x90, 0xf1, 0xA2, 0xA7, 0xffff, 0xffff, 0xffff },
        { 0xFFFF, 0xC, 0x0, 0x0 },
        { 0xFFFF, 0x1, 0x0, 0x0 },
        { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        0x12345678,
        0x50,
        0x0,
        { 0x71, 0x90, 0xf1, 0xA2, 0xA8, 0xffff, 0xffff, 0xffff },
        { 0xFFFF, 0xF, 0x0, 0x0 },
        { 0xFFFF, 0x1, 0x0, 0x0 },
        { 0xFFFF, 0x2, 0x0, 0x0 },
    },
    {
        0x12345678,
        0x1D,
        0x0,
        { 0x71, 0x90, 0xf1, 0xA2, 0xA9, 0xffff, 0xffff, 0xffff },
        { 0xFFFF, 0x12, 0x0, 0x0 },
        { 0xFFFF, 0x1, 0x0, 0x0 },
        { 0xFFFF, 0x2, 0x0, 0x0 },
    },
};

typedef struct {
    u16 unk_00;
    u8 unk_02[4];
} UnkStruct_ov104_0223FCB4;

static const UnkStruct_ov104_0223FCB4 Unk_ov104_0223FCB4[] = {
    {
        0x4,
        { 0x0, 0x1, 0x2, 0x3 },
    },
    {
        0x14,
        { 0x2, 0x3, 0x4, 0x5 },
    },
    {
        0x9,
        { 0x4, 0x6, 0x6, 0x7 },
    },
    {
        0xA,
        { 0x6, 0x7, 0x8, 0x9 },
    },
    {
        0x23,
        { 0x8, 0x9, 0xA, 0xB },
    },
    {
        0xD,
        { 0xB, 0xC, 0xD, 0xE },
    },
    {
        0x11,
        { 0xD, 0xE, 0xF, 0x10 },
    },
};

void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *param0);
void ov104_0223A30C(SaveData *saveData, UnkStruct_ov104_0223A348 *param1, const u8 param2);
FieldBattleDTO *ov104_0223A580(BattleTower *battleTower, UnkStruct_ov104_02230BE4 *param1);
void ov104_0223A734(BattleTower *battleTower, u16 param1);
u16 ov104_0223A750(BattleTower *battleTower, const u16 *param1);
int ov104_0223A768(u8 param0);
int ov104_0223A77C(u8 param0);
int ov104_0223A790(u8 param0);
static BOOL ov104_0223A118(BattleTower *battleTower, BattleFrontierTrainerData *param1, u16 param2, FrontierPokemonDataDTO *param3, u8 param4, u16 *param5, u16 *param6, UnkStruct_0204B404 *param7, int param8);
static void ov104_0223A348(UnkStruct_ov104_0223A348 *param0, const u8 param1);
static u32 ov104_0223A3A8(BattleTower *battleTower, FrontierPokemonDataDTO *param1, u16 param2, u32 param3, u32 param4, u8 param5, u8 param6, BOOL param7, int param8);
static u32 BattleTower_GetBattleTypeFromChallengeMode(u8 challengeMode);
static void ov104_0223A6AC(FieldBattleDTO *param0, UnkStruct_ov104_0223A348 *param1, int param2, int param3, int param4);
static int ov104_0223A7AC(u8 param0);

BOOL ov104_0223A0C4(BattleTower *battleTower, UnkStruct_ov104_0223A348 *param1, u16 param2, int param3, u16 *param4, u16 *param5, UnkStruct_0204B404 *param6, int heapID)
{
    BOOL v0 = 0;
    BattleFrontierTrainerData *v1 = ov104_0222DD04(&param1->unk_00, param2, heapID, ov104_0223A77C(battleTower->challengeMode));
    v0 = ov104_0223A118(battleTower, v1, param2, &param1->unk_30[0], param3, param4, param5, param6, heapID);

    Heap_Free(v1);

    return v0;
}

static BOOL ov104_0223A118(BattleTower *battleTower, BattleFrontierTrainerData *param1, u16 param2, FrontierPokemonDataDTO *param3, u8 param4, u16 *param5, u16 *param6, UnkStruct_0204B404 *param7, int param8)
{
    int v0;
    u8 v2;
    u8 v3;
    u32 v4;
    int v5;
    int v6[4];
    u32 v7[4];
    int v8;
    int v9;
    BOOL v10 = 0;
    BattleFrontierPokemonData v11;
    BattleFrontierPokemonData v12;

    GF_ASSERT(param4 <= 4);

    v8 = 0;
    v9 = 0;

    while (v8 != param4) {
        v3 = sub_0204AEC0(battleTower) % param1->numSets;
        v5 = param1->setIDs[v3];

        ov104_0222DCF4(&v12, v5, ov104_0223A768(battleTower->challengeMode));

        for (v0 = 0; v0 < v8; v0++) {
            ov104_0222DCF4(&v11, v6[v0], ov104_0223A768(battleTower->challengeMode));

            if (v11.species == v12.species) {
                break;
            }
        }

        if (v0 != v8) {
            continue;
        }

        if (param5 != NULL) {
            for (v0 = 0; v0 < param4; v0++) {
                if (param5[v0] == v12.species) {
                    break;
                }
            }

            if (v0 != param4) {
                continue;
            }
        }

        if (v9 < 50) {
            for (v0 = 0; v0 < v8; v0++) {
                ov104_0222DCF4(&v11, v6[v0], ov104_0223A768(battleTower->challengeMode));

                if ((v11.item) && (v11.item == v12.item)) {
                    break;
                }
            }

            if (v0 != v8) {
                v9++;
                continue;
            }

            if (param6 != NULL) {
                for (v0 = 0; v0 < param4; v0++) {
                    if ((param6[v0] == v12.item) && (param6[v0] != 0)) {
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
    v4 = (sub_0204AEC0(battleTower) | (sub_0204AEC0(battleTower) << 16));

    if (v9 >= 50) {
        v10 = 1;
    }

    for (v0 = 0; v0 < v8; v0++) {
        v7[v0] = ov104_0223A3A8(battleTower, &(param3[v0]), v6[v0], v4, 0, v2, v0, v10, param8);
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

void ov104_0223A30C(SaveData *saveData, UnkStruct_ov104_0223A348 *param1, const u8 param2)
{
    MI_CpuClear8(param1, sizeof(UnkStruct_ov104_0223A348));

    UnkStruct_0202D764 *v1 = sub_0202D764(saveData);

    if (!sub_0202D5E8(v1)) {
        ov104_0223A348(param1, param2);
        return;
    }

    sub_0202D63C(v1, param1, param2);
}

static void ov104_0223A348(UnkStruct_ov104_0223A348 *param0, const u8 param1)
{
    int v0;
    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223A348));

    const FrontierTrainerDataDTO *v1 = &(Unk_ov104_0223FCE0[param1]);
    const FrontierPokemonDataDTO *v2 = Unk_ov104_0223FE30;
    const UnkStruct_ov104_0223FCB4 *v3 = &(Unk_ov104_0223FCB4[param1]);

    MI_CpuCopy8(v1, &param0->unk_00, sizeof(FrontierTrainerDataDTO));
    param0->unk_00.unk_06 = v3->unk_00;

    for (v0 = 0; v0 < 4; v0++) {
        MI_CpuCopy8(&(v2[v3->unk_02[v0]]), &(param0->unk_30[v0]), sizeof(FrontierPokemonDataDTO));
    }
}

static const u16 Unk_ov104_0223FCAC[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW,
};

static u32 ov104_0223A3A8(BattleTower *battleTower, FrontierPokemonDataDTO *param1, u16 param2, u32 param3, u32 param4, u8 param5, u8 param6, BOOL param7, int param8)
{
    int v0;
    int v1;
    u32 v2;
    BattleFrontierPokemonData v4;

    MI_CpuClear8(param1, sizeof(FrontierPokemonDataDTO));
    ov104_0222DCF4(&v4, param2, ov104_0223A768(battleTower->challengeMode));

    param1->species = v4.species;
    param1->form = v4.form;

    if (param7) {
        param1->item = Unk_ov104_0223FCAC[param6];
    } else {
        param1->item = v4.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        param1->moves[v0] = v4.moves[v0];

        if (v4.moves[v0] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    param1->otID = param3;

    if (param4 == 0) {
        do {
            v2 = (sub_0204AEC0(battleTower) | sub_0204AEC0(battleTower) << 16);
        } while ((v4.nature != Pokemon_GetNatureOf(v2)) || (Pokemon_IsPersonalityShiny(param3, v2) == 1));

        param1->personality = v2;
    } else {
        param1->personality = param4;
        v2 = param4;
    }

    param1->hpIV = param5;
    param1->atkIV = param5;
    param1->defIV = param5;
    param1->speedIV = param5;
    param1->spAtkIV = param5;
    param1->spDefIV = param5;

    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (v4.evFlags & FlagIndex(v0)) {
            v1++;
        }
    }

    if ((510 / v1) > 255) {
        v1 = 255;
    } else {
        v1 = 510 / v1;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (v4.evFlags & FlagIndex(v0)) {
            param1->evList[v0] = v1;
        }
    }

    param1->combinedPPUps = 0;
    param1->language = gGameLanguage;

    v0 = SpeciesData_GetSpeciesValue(param1->species, SPECIES_DATA_ABILITY_2);

    if (v0) {
        if (param1->personality & 1) {
            param1->ability = v0;
        } else {
            param1->ability = SpeciesData_GetSpeciesValue(param1->species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        param1->ability = SpeciesData_GetSpeciesValue(param1->species, SPECIES_DATA_ABILITY_1);
    }

    param1->friendship = friendship;
    MessageLoader_GetSpeciesName(param1->species, param8, &(param1->nickname[0]));

    return v2;
}

FieldBattleDTO *ov104_0223A580(BattleTower *battleTower, UnkStruct_ov104_02230BE4 *param1)
{
    int v0;

    FieldBattleDTO *v3 = FieldBattleDTO_New(battleTower->heapID, BattleTower_GetBattleTypeFromChallengeMode(battleTower->challengeMode));
    SaveData *saveData = param1->saveData;
    Party *party = SaveData_GetParty(saveData);

    FieldBattleDTO_InitFromGameState(v3, NULL, param1->saveData, param1->unk_1C, param1->journalEntry, param1->bagCursor, param1->unk_20);

    v3->background = BACKGROUND_BATTLE_TOWER;
    v3->terrain = TERRAIN_BATTLE_TOWER;

    Pokemon *mon = Pokemon_New(battleTower->heapID);
    u8 level = 50;

    Party_InitWithCapacity(v3->parties[BATTLER_PLAYER_1], battleTower->partySize);

    for (v0 = 0; v0 < battleTower->partySize; v0++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(party, battleTower->unk_2A[v0]), mon);

        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) > level) {
            u32 v2 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), level);

            Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &v2);
            Pokemon_CalcLevelAndStats(mon);
        }

        FieldBattleDTO_AddPokemonToBattler(v3, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(v3);

    ov104_0223A6AC(v3, &(battleTower->unk_78[0]), battleTower->partySize, BATTLER_ENEMY_1, battleTower->heapID);

    for (v0 = 0; v0 < MAX_BATTLERS; v0++) {
        v3->trainer[v0].header.aiMask = (0x1 | 0x2 | 0x4);
    }

    switch (battleTower->challengeMode) {
    case 2:
        ov104_0223A6AC(v3, &(battleTower->unk_298[battleTower->unk_10_5]), battleTower->partySize, BATTLER_PLAYER_2, battleTower->heapID);
        // fall through
    case 3:
    case 6:
        ov104_0223A6AC(v3, &(battleTower->unk_78[1]), battleTower->partySize, BATTLER_ENEMY_2, battleTower->heapID);
        break;
    default:
        break;
    }

    return v3;
}

static void ov104_0223A6AC(FieldBattleDTO *param0, UnkStruct_ov104_0223A348 *param1, int param2, int battlerId, int heapID)
{
    ov104_0222E284(param0, &param1->unk_00, param2, battlerId, heapID);
    Pokemon *mon = Pokemon_New(heapID);

    for (int v0 = 0; v0 < param2; v0++) {
        ov104_0222DF40(&param1->unk_30[v0], mon, 120);
        Party_AddPokemon(param0->parties[battlerId], mon);
    }

    Heap_Free(mon);
}

static u32 BattleTower_GetBattleTypeFromChallengeMode(u8 challengeMode)
{
    switch (challengeMode) {
    case BATTLE_TOWER_MODE_SINGLE:
    case BATTLE_TOWER_MODE_WIFI:
        return (BATTLE_TYPE_SINGLES | BATTLE_TYPE_TRAINER) | BATTLE_TYPE_FRONTIER;
    case BATTLE_TOWER_MODE_DOUBLE:
        return BATTLE_TYPE_FRONTIER_DOUBLES;
    case BATTLE_TOWER_MODE_MULTI:
        return BATTLE_TYPE_FRONTIER_WITH_AI_PARTNER;
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        return (BATTLE_TYPE_LINK_DOUBLES | BATTLE_TYPE_2vs2) | BATTLE_TYPE_FRONTIER;
    }

    return (BATTLE_TYPE_SINGLES | BATTLE_TYPE_TRAINER) | BATTLE_TYPE_FRONTIER;
}

void ov104_0223A734(BattleTower *battleTower, u16 param1)
{
    battleTower->unk_10_3 = param1;
    battleTower->unk_83E[0] = param1;
}

u16 ov104_0223A750(BattleTower *battleTower, const u16 *param1)
{
    int v0;

    if (battleTower->unk_10_3 || param1[0]) {
        return 1;
    }

    return 0;
}

int ov104_0223A768(u8 param0)
{
    if (ov104_0223A7AC(param0) == FALSE) {
        return NARC_INDEX_BATTLE__B_TOWER__BTDPM;
    }

    return NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM;
}

int ov104_0223A77C(u8 param0)
{
    if (ov104_0223A7AC(param0) == FALSE) {
        return NARC_INDEX_BATTLE__B_TOWER__BTDTR;
    }

    return NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR;
}

int ov104_0223A790(u8 param0)
{
    if (ov104_0223A7AC(param0) == FALSE) {
        return TEXT_BANK_UNK_0613;
    }

    return TEXT_BANK_FRONTIER_TRAINER_MESSAGES;
}

static int ov104_0223A7AC(u8 param0)
{
    switch (param0) {
    case 3:
    case 6:
        TrainerInfo *v0 = CommInfo_TrainerInfo(0);

        if (v0 == NULL) {
            GF_ASSERT(FALSE);
        }

        TrainerInfo *v1 = CommInfo_TrainerInfo(1);

        if (v1 == NULL) {
            GF_ASSERT(FALSE);
        }

        u8 v2 = TrainerInfo_GameCode(v0);
        u8 v3 = TrainerInfo_GameCode(v1);

        if ((v2 == 0) || (v3 == 0)) {
            return FALSE;
        }

        return TRUE;
    }

    return TRUE;
}
