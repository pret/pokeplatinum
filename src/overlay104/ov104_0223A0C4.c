#include "overlay104/ov104_0223A0C4.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_modes.h"
#include "generated/species_data_params.h"

#include "struct_defs/battle_frontier_pokemon_data.h"
#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_0202D764.h"
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

void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *dto);
void ov104_0223A30C(SaveData *saveData, FrontierDataDTO *dto, const u8 param2);
FieldBattleDTO *ov104_0223A580(BattleTower *battleTower, UnkStruct_ov104_02230BE4 *param1);
void ov104_0223A734(BattleTower *battleTower, u16 param1);
u16 ov104_0223A750(BattleTower *battleTower, const u16 *param1);
int BattleTower_GetPokemonDataNarcID(u8 challengeMode);
int BattleTower_GetTrainerDataNarcID(u8 challengeMode);
int BattleTower_GetTrainerMessagesBankID(u8 challengeMode);
static BOOL BattleTower_CreateRandomTrainerParty(BattleTower *battleTower, BattleFrontierTrainerData *trData, u16 battleTowerTrainerID, FrontierPokemonDataDTO *monDataDTO, u8 partySize, u16 *species, u16 *items, UnkStruct_0204B404 *param7, int heapID);
static void ov104_0223A348(FrontierDataDTO *param0, const u8 param1);
static u32 BattleTower_CopySetToPokemonDataDTO(BattleTower *battleTower, FrontierPokemonDataDTO *monDataDTO, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, BOOL giveReservedItem, int heapID);
static u32 BattleTower_GetBattleTypeFromChallengeMode(u8 challengeMode);
static void ov104_0223A6AC(FieldBattleDTO *param0, FrontierDataDTO *param1, int param2, int param3, int param4);
static int BattleTower_AreAllConnectedGamesPlatinum(u8 challengeMode);

BOOL BattleTower_CreateTrainerParty(BattleTower *battleTower, FrontierDataDTO *opponentDataDTO, u16 battleTowerTrainerID, int partySize, u16 *species, u16 *items, UnkStruct_0204B404 *param6, int heapID)
{
    BOOL v0 = 0;
    BattleFrontierTrainerData *trData = BattleTower_GetTrainerData(&opponentDataDTO->trDataDTO, battleTowerTrainerID, heapID, BattleTower_GetTrainerDataNarcID(battleTower->challengeMode));
    v0 = BattleTower_CreateRandomTrainerParty(battleTower, trData, battleTowerTrainerID, &opponentDataDTO->monDataDTO[0], partySize, species, items, param6, heapID);

    Heap_Free(trData);

    return v0;
}

static BOOL BattleTower_CreateRandomTrainerParty(BattleTower *battleTower, BattleFrontierTrainerData *trData, u16 battleTowerTrainerID, FrontierPokemonDataDTO *monDataDTO, u8 partySize, u16 *species, u16 *items, UnkStruct_0204B404 *param7, int heapID)
{
    int i;
    u8 ivs;
    u8 random;
    u32 v4;
    int setID;
    int setIDs[BT_DOUBLES_PARTY_SIZE];
    u32 personalities[BT_DOUBLES_PARTY_SIZE];
    int partyIndex;
    int dupeItemFailsafeCount;
    BOOL giveReservedItem = 0;
    BattleFrontierPokemonData monDataPrev;
    BattleFrontierPokemonData monDataCurr;

    GF_ASSERT(partySize <= BT_DOUBLES_PARTY_SIZE);

    partyIndex = 0;
    dupeItemFailsafeCount = 0;

    while (partyIndex != partySize) {
        random = BattleTower_GetRandom(battleTower) % trData->numSets;
        setID = trData->setIDs[random];

        BattleTower_GetMonDataFromSetIDAndNarcID(&monDataCurr, setID, BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

        for (i = 0; i < partyIndex; i++) {
            BattleTower_GetMonDataFromSetIDAndNarcID(&monDataPrev, setIDs[i], BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

            if (monDataPrev.species == monDataCurr.species) {
                break;
            }
        }

        if (i != partyIndex) {
            continue;
        }

        if (species != NULL) {
            for (i = 0; i < partySize; i++) {
                if (species[i] == monDataCurr.species) {
                    break;
                }
            }

            if (i != partySize) {
                continue;
            }
        }

        if (dupeItemFailsafeCount < 50) {
            for (i = 0; i < partyIndex; i++) {
                BattleTower_GetMonDataFromSetIDAndNarcID(&monDataPrev, setIDs[i], BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

                if (monDataPrev.item && monDataPrev.item == monDataCurr.item) {
                    break;
                }
            }

            if (i != partyIndex) {
                dupeItemFailsafeCount++;
                continue;
            }

            if (items != NULL) {
                for (i = 0; i < partySize; i++) {
                    if (items[i] == monDataCurr.item && items[i] != 0) {
                        break;
                    }
                }

                if (i != partySize) {
                    dupeItemFailsafeCount++;
                    continue;
                }
            }
        }

        setIDs[partyIndex] = setID;
        partyIndex++;
    }

    ivs = BattleTower_GetIVsFromTrainerID(battleTowerTrainerID);
    v4 = BattleTower_GetRandom(battleTower) | (BattleTower_GetRandom(battleTower) << 16);

    if (dupeItemFailsafeCount >= 50) {
        giveReservedItem = TRUE;
    }

    for (i = 0; i < partyIndex; i++) {
        personalities[i] = BattleTower_CopySetToPokemonDataDTO(battleTower, &(monDataDTO[i]), setIDs[i], v4, 0, ivs, i, giveReservedItem, heapID);
    }

    if (param7 == NULL) {
        return giveReservedItem;
    }

    param7->unk_00 = v4;

    for (i = 0; i < 2; i++) {
        param7->unk_04[i] = setIDs[i];
        param7->unk_08[i] = personalities[i];
    }

    return giveReservedItem;
}

void ov104_0223A30C(SaveData *saveData, FrontierDataDTO *dto, const u8 param2)
{
    MI_CpuClear8(dto, sizeof(FrontierDataDTO));

    UnkStruct_0202D764 *v1 = sub_0202D764(saveData);

    if (!sub_0202D5E8(v1)) {
        ov104_0223A348(dto, param2);
        return;
    }

    sub_0202D63C(v1, dto, param2);
}

static void ov104_0223A348(FrontierDataDTO *param0, const u8 param1)
{
    int v0;
    MI_CpuClear8(param0, sizeof(FrontierDataDTO));

    const FrontierTrainerDataDTO *v1 = &(Unk_ov104_0223FCE0[param1]);
    const FrontierPokemonDataDTO *v2 = Unk_ov104_0223FE30;
    const UnkStruct_ov104_0223FCB4 *v3 = &(Unk_ov104_0223FCB4[param1]);

    MI_CpuCopy8(v1, &param0->trDataDTO, sizeof(FrontierTrainerDataDTO));
    param0->trDataDTO.unk_06 = v3->unk_00;

    for (v0 = 0; v0 < 4; v0++) {
        MI_CpuCopy8(&(v2[v3->unk_02[v0]]), &(param0->monDataDTO[v0]), sizeof(FrontierPokemonDataDTO));
    }
}

static const u16 sBattleTowerReservedItems[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW,
};

static u32 BattleTower_CopySetToPokemonDataDTO(BattleTower *battleTower, FrontierPokemonDataDTO *monDataDTO, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, BOOL giveReservedItem, int heapID)
{
    int v0;
    int evs;
    u32 randomPersonality;
    BattleFrontierPokemonData monData;

    MI_CpuClear8(monDataDTO, sizeof(FrontierPokemonDataDTO));
    BattleTower_GetMonDataFromSetIDAndNarcID(&monData, setID, BattleTower_GetPokemonDataNarcID(battleTower->challengeMode));

    monDataDTO->species = monData.species;
    monDataDTO->form = monData.form;

    if (giveReservedItem) {
        monDataDTO->item = sBattleTowerReservedItems[partyIndex];
    } else {
        monDataDTO->item = monData.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        monDataDTO->moves[v0] = monData.moves[v0];

        if (monData.moves[v0] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    monDataDTO->otID = otID;

    if (givenPersonality == 0) {
        do {
            randomPersonality = BattleTower_GetRandom(battleTower) | BattleTower_GetRandom(battleTower) << 16;
        } while (monData.nature != Pokemon_GetNatureOf(randomPersonality) || Pokemon_IsPersonalityShiny(otID, randomPersonality) == 1);

        monDataDTO->personality = randomPersonality;
    } else {
        monDataDTO->personality = givenPersonality;
        randomPersonality = givenPersonality;
    }

    monDataDTO->hpIV = ivs;
    monDataDTO->atkIV = ivs;
    monDataDTO->defIV = ivs;
    monDataDTO->speedIV = ivs;
    monDataDTO->spAtkIV = ivs;
    monDataDTO->spDefIV = ivs;

    evs = 0;

    for (v0 = 0; v0 < STAT_MAX; v0++) {
        if (monData.evFlags & FlagIndex(v0)) {
            evs++;
        }
    }

    if (MAX_EVS_ALL_STATS / evs > MAX_EVS_SINGLE_STAT) {
        evs = MAX_EVS_SINGLE_STAT;
    } else {
        evs = MAX_EVS_ALL_STATS / evs;
    }

    for (v0 = 0; v0 < STAT_MAX; v0++) {
        if (monData.evFlags & FlagIndex(v0)) {
            monDataDTO->evList[v0] = evs;
        }
    }

    monDataDTO->combinedPPUps = 0;
    monDataDTO->language = gGameLanguage;

    v0 = SpeciesData_GetSpeciesValue(monDataDTO->species, SPECIES_DATA_ABILITY_2);

    if (v0) {
        if (monDataDTO->personality & 1) {
            monDataDTO->ability = v0;
        } else {
            monDataDTO->ability = SpeciesData_GetSpeciesValue(monDataDTO->species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        monDataDTO->ability = SpeciesData_GetSpeciesValue(monDataDTO->species, SPECIES_DATA_ABILITY_1);
    }

    monDataDTO->friendship = friendship;
    MessageLoader_GetSpeciesName(monDataDTO->species, heapID, &(monDataDTO->nickname[0]));

    return randomPersonality;
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

    ov104_0223A6AC(v3, &(battleTower->opponentsDataDTO[0]), battleTower->partySize, BATTLER_ENEMY_1, battleTower->heapID);

    for (v0 = 0; v0 < MAX_BATTLERS; v0++) {
        v3->trainer[v0].header.aiMask = (0x1 | 0x2 | 0x4);
    }

    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_MULTI:
        ov104_0223A6AC(v3, &(battleTower->partnersDataDTO[battleTower->partnerID]), battleTower->partySize, BATTLER_PLAYER_2, battleTower->heapID);
        // fall through
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        ov104_0223A6AC(v3, &(battleTower->opponentsDataDTO[1]), battleTower->partySize, BATTLER_ENEMY_2, battleTower->heapID);
        break;
    default:
        break;
    }

    return v3;
}

static void ov104_0223A6AC(FieldBattleDTO *param0, FrontierDataDTO *param1, int param2, int battlerId, int heapID)
{
    ov104_0222E284(param0, &param1->trDataDTO, param2, battlerId, heapID);
    Pokemon *mon = Pokemon_New(heapID);

    for (int v0 = 0; v0 < param2; v0++) {
        ov104_0222DF40(&param1->monDataDTO[v0], mon, 120);
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

int BattleTower_GetPokemonDataNarcID(u8 challengeMode)
{
    if (BattleTower_AreAllConnectedGamesPlatinum(challengeMode) == FALSE) {
        return NARC_INDEX_BATTLE__B_TOWER__BTDPM;
    }

    return NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM;
}

int BattleTower_GetTrainerDataNarcID(u8 challengeMode)
{
    if (BattleTower_AreAllConnectedGamesPlatinum(challengeMode) == FALSE) {
        return NARC_INDEX_BATTLE__B_TOWER__BTDTR;
    }

    return NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR;
}

int BattleTower_GetTrainerMessagesBankID(u8 challengeMode)
{
    if (BattleTower_AreAllConnectedGamesPlatinum(challengeMode) == FALSE) {
        return TEXT_BANK_UNK_0613;
    }

    return TEXT_BANK_FRONTIER_TRAINER_MESSAGES;
}

static int BattleTower_AreAllConnectedGamesPlatinum(u8 challengeMode)
{
    switch (challengeMode) {
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
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

        if (v2 == 0 || v3 == 0) {
            return FALSE;
        }

        return TRUE;
    }

    return TRUE;
}
