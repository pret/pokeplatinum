#include "unk_0204AEE8.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_modes.h"
#include "generated/frontier_trainers.h"
#include "generated/object_events.h"
#include "generated/species_data_params.h"
#include "generated/trainer_classes.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/battle_frontier_pokemon_data.h"
#include "struct_defs/battle_frontier_trainer_data.h"
#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_0204B404.h"

#include "field/field_system.h"

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
#include "string_padding_mode.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0202D05C.h"
#include "unk_02049D08.h"

static BOOL sub_0204B470(BattleTower *battleTower, BattleFrontierTrainerData *trainerData, u16 partnerBattleTowerID, FrontierPokemonDataDTO *param3, u8 partySize, u16 *param5, u16 *param6, UnkStruct_0204B404 *param7, int param8);
static void *sub_0204B630(u16 param0, int param1);
static void sub_0204B640(BattleFrontierPokemonData *param0, int param1);

static const u16 sTrainerClassToObjectID[][2] = {
    { TRAINER_CLASS_TRAINER_CHERYL, OBJ_EVENT_GFX_CHERYL },
    { TRAINER_CLASS_TRAINER_RILEY, OBJ_EVENT_GFX_RILEY },
    { TRAINER_CLASS_TRAINER_MARLEY, OBJ_EVENT_GFX_MARLEY },
    { TRAINER_CLASS_TRAINER_BUCK, OBJ_EVENT_GFX_BUCK },
    { TRAINER_CLASS_TRAINER_MIRA, OBJ_EVENT_GFX_MIRA },
    { TRAINER_CLASS_YOUNGSTER, OBJ_EVENT_GFX_YOUNGSTER },
    { TRAINER_CLASS_LASS, OBJ_EVENT_GFX_LASS },
    { TRAINER_CLASS_SCHOOL_KID_MALE, OBJ_EVENT_GFX_SCHOOL_KID_M },
    { TRAINER_CLASS_SCHOOL_KID_FEMALE, OBJ_EVENT_GFX_SCHOOL_KID_F },
    { TRAINER_CLASS_RICH_BOY, OBJ_EVENT_GFX_RICH_BOY },
    { TRAINER_CLASS_LADY, OBJ_EVENT_GFX_LADY },
    { TRAINER_CLASS_CAMPER, OBJ_EVENT_GFX_CAMPER },
    { TRAINER_CLASS_PICNICKER, OBJ_EVENT_GFX_PICNICKER },
    { TRAINER_CLASS_TUBER_MALE, OBJ_EVENT_GFX_NINJA_BOY },
    { TRAINER_CLASS_TUBER_FEMALE, OBJ_EVENT_GFX_TWIN },
    { TRAINER_CLASS_POKEFAN_MALE, OBJ_EVENT_GFX_POKEFAN_M },
    { TRAINER_CLASS_POKEFAN_FEMALE, OBJ_EVENT_GFX_POKEFAN_F },
    { TRAINER_CLASS_WAITER, OBJ_EVENT_GFX_WAITER },
    { TRAINER_CLASS_WAITRESS, OBJ_EVENT_GFX_WAITRESS },
    { TRAINER_CLASS_BREEDER_MALE, OBJ_EVENT_GFX_POKEMON_BREEDER_M },
    { TRAINER_CLASS_BREEDER_FEMALE, OBJ_EVENT_GFX_POKEMON_BREEDER_F },
    { TRAINER_CLASS_CAMERAMAN, OBJ_EVENT_GFX_CAMERAMAN },
    { TRAINER_CLASS_REPORTER, OBJ_EVENT_GFX_REPORTER },
    { TRAINER_CLASS_RANCHER, OBJ_EVENT_GFX_RANCHER },
    { TRAINER_CLASS_COWGIRL, OBJ_EVENT_GFX_COWGIRL },
    { TRAINER_CLASS_CYCLIST_MALE, OBJ_EVENT_GFX_CYCLIST_M },
    { TRAINER_CLASS_CYCLIST_FEMALE, OBJ_EVENT_GFX_CYCLIST_F },
    { TRAINER_CLASS_BLACK_BELT, OBJ_EVENT_GFX_BLACK_BELT },
    { TRAINER_CLASS_BATTLE_GIRL, OBJ_EVENT_GFX_BATTLE_GIRL },
    { TRAINER_CLASS_VETERAN, OBJ_EVENT_GFX_EXPERT_M },
    { TRAINER_CLASS_SOCIALITE, OBJ_EVENT_GFX_SOCIALITE },
    { TRAINER_CLASS_PSYCHIC_MALE, OBJ_EVENT_GFX_PSYCHIC },
    { TRAINER_CLASS_PSYCHIC_FEMALE, OBJ_EVENT_GFX_PSYCHIC },
    { TRAINER_CLASS_RANGER_MALE, OBJ_EVENT_GFX_ACE_TRAINER_M },
    { TRAINER_CLASS_RANGER_FEMALE, OBJ_EVENT_GFX_ACE_TRAINER_F },
    { TRAINER_CLASS_ACE_TRAINER_MALE, OBJ_EVENT_GFX_ACE_TRAINER_M },
    { TRAINER_CLASS_ACE_TRAINER_FEMALE, OBJ_EVENT_GFX_ACE_TRAINER_F },
    { TRAINER_CLASS_ACE_TRAINER_SNOW_MALE, OBJ_EVENT_GFX_ACE_TRAINER_SNOW_M },
    { TRAINER_CLASS_ACE_TRAINER_SNOW_FEMALE, OBJ_EVENT_GFX_ACE_TRAINER_SNOW_F },
    { TRAINER_CLASS_DRAGON_TAMER, OBJ_EVENT_GFX_ACE_TRAINER_M },
    { TRAINER_CLASS_BUG_CATCHER, OBJ_EVENT_GFX_BUG_CATCHER },
    { TRAINER_CLASS_NINJA_BOY, OBJ_EVENT_GFX_NINJA_BOY },
    { TRAINER_CLASS_JOGGER, OBJ_EVENT_GFX_JOGGER },
    { TRAINER_CLASS_FISHERMAN, OBJ_EVENT_GFX_FISHERMAN },
    { TRAINER_CLASS_SAILOR, OBJ_EVENT_GFX_SAILOR },
    { TRAINER_CLASS_HIKER, OBJ_EVENT_GFX_HIKER },
    { TRAINER_CLASS_RUIN_MANIAC, OBJ_EVENT_GFX_RUIN_MANIAC },
    { TRAINER_CLASS_GUITARIST, OBJ_EVENT_GFX_GUITARIST },
    { TRAINER_CLASS_COLLECTOR, OBJ_EVENT_GFX_COLLECTOR },
    { TRAINER_CLASS_ROUGHNECK, OBJ_EVENT_GFX_ROUGHNECK },
    { TRAINER_CLASS_SCIENTIST, OBJ_EVENT_GFX_SCIENTIST_M },
    { TRAINER_CLASS_GENTLEMAN, OBJ_EVENT_GFX_GENTLEMAN },
    { TRAINER_CLASS_WORKER, OBJ_EVENT_GFX_WORKER },
    { TRAINER_CLASS_CLOWN, OBJ_EVENT_GFX_CLOWN },
    { TRAINER_CLASS_POLICEMAN, OBJ_EVENT_GFX_POLICEMAN },
    { TRAINER_CLASS_PI, OBJ_EVENT_GFX_RICH_BOY },
    { TRAINER_CLASS_BIRD_KEEPER, OBJ_EVENT_GFX_ACE_TRAINER_F },
    { TRAINER_CLASS_PARASOL_LADY, OBJ_EVENT_GFX_PARASOL_LADY },
    { TRAINER_CLASS_BEAUTY, OBJ_EVENT_GFX_BEAUTY },
    { TRAINER_CLASS_AROMA_LADY, OBJ_EVENT_GFX_POKEMON_BREEDER_F },
    { TRAINER_CLASS_IDOL, OBJ_EVENT_GFX_IDOL },
    { TRAINER_CLASS_ARTIST, OBJ_EVENT_GFX_ARTIST },
    { TRAINER_CLASS_POKE_KID, OBJ_EVENT_GFX_PIKACHU }
};

StringTemplate *BattleFrontier_MakeSeenBanlistSpeciesMsg(SaveData *saveData, u16 numPokemonRequired, u16 unused2, u8 unused3, u8 *outNumBannedSeen)
{
    // Forward declarations required to match
    u8 i;
    u16 bannedSpecies;
    Strbuf *speciesName, *unused;
    Pokedex *pokedex;
    StringTemplate *bannedSpeciesList;
    MessageLoader *speciesNameLoader;

    speciesName = Strbuf_Init(14, HEAP_ID_FIELD1);
    unused = Strbuf_Init(2, HEAP_ID_FIELD1);
    pokedex = SaveData_GetPokedex(saveData);
    speciesNameLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD1);
    bannedSpeciesList = StringTemplate_New(BATTLE_FRONTIER_BANLIST_SIZE + 1, 14, HEAP_ID_FIELD1);

    StringTemplate_SetNumber(bannedSpeciesList, 0, numPokemonRequired, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);

    for (i = 0; i < BATTLE_FRONTIER_BANLIST_SIZE; i++) {
        bannedSpecies = Pokemon_GetBattleFrontierBanlistEntry(i);

        if (Pokedex_HasSeenSpecies(pokedex, bannedSpecies)) {
            MessageLoader_GetStrbuf(speciesNameLoader, bannedSpecies, speciesName);
            StringTemplate_SetStrbuf(bannedSpeciesList, (*outNumBannedSeen) + 1, speciesName, unused2, unused3, GAME_LANGUAGE);
            (*outNumBannedSeen)++;
        }
    }

    MessageLoader_Free(speciesNameLoader);
    Strbuf_Free(unused);
    Strbuf_Free(speciesName);

    return bannedSpeciesList;
}

u16 BattleFrontier_GetObjectIDFromTrainerClass(u8 trainerClass)
{
    for (int v0 = 0; v0 < (NELEMS(sTrainerClassToObjectID)); v0++) {
        if (sTrainerClassToObjectID[v0][0] == trainerClass) {
            return sTrainerClassToObjectID[v0][1];
        }
    }

    return OBJ_EVENT_GFX_SCHOOL_KID_M;
}

u16 sub_0204AFC4(FieldSystem *fieldSystem, const u16 *param1)
{
    u16 v0 = 0;
    BattleTower *battleTower = fieldSystem->battleTower;

    battleTower->partnerGender = (u8)param1[0];
    battleTower->unk_16[0] = param1[1];
    battleTower->unk_16[1] = param1[2];
    battleTower->unk_14 = param1[3];
    battleTower->partnerID = BT_PARTNERS_COUNT + battleTower->partnerGender;

    if ((battleTower->unk_2E[0] == battleTower->unk_16[0]) || (battleTower->unk_2E[0] == battleTower->unk_16[1])) {
        v0 += 1;
    }

    if ((battleTower->unk_2E[1] == battleTower->unk_16[0]) || (battleTower->unk_2E[1] == battleTower->unk_16[1])) {
        v0 += 2;
    }

    return v0;
}

u16 sub_0204B020(FieldSystem *fieldSystem, const u16 *param1)
{
    int v0;
    BattleTower *battleTower = fieldSystem->battleTower;

    if (CommSys_CurNetId() == 0) {
        return 0;
    }

    MI_CpuCopy8(param1, battleTower->trainerIDs, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
    return 1;
}

u16 sub_0204B044(FieldSystem *fieldSystem, const u16 *param1)
{
    int v0;
    BattleTower *battleTower = fieldSystem->battleTower;

    if (battleTower->unk_10_3 || param1[0]) {
        return 1;
    }

    return 0;
}

void sub_0204B060(BattleTower *battleTower, SaveData *saveData)
{
    int v0;
    Party *v1;
    Pokemon *v2;
    TrainerInfo *v3 = SaveData_GetTrainerInfo(saveData);

    battleTower->unk_83E[0] = TrainerInfo_Gender(v3);
    v1 = SaveData_GetParty(saveData);

    for (v0 = 0; v0 < 2; v0++) {
        battleTower->unk_83E[1 + v0] = Pokemon_GetValue(Party_GetPokemonBySlotIndex(v1, battleTower->unk_2A[v0]), MON_DATA_SPECIES, NULL);
    }

    battleTower->unk_83E[3] = sub_0202D3B4(battleTower->unk_74, 3, 0);
}

void sub_0204B0BC(BattleTower *battleTower)
{
    MI_CpuCopy8(battleTower->trainerIDs, battleTower->unk_83E, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
}

void sub_0204B0D4(BattleTower *battleTower, u16 param1)
{
    battleTower->unk_10_3 = param1;
    battleTower->unk_83E[0] = param1;
}

static const u16 sBattleTowerTrainerRangesPerRoom[][2] = {
    { FRONTIER_TRAINER_YOUNGSTER_JIM, FRONTIER_TRAINER_REPORTER_GINGHAM },
    { FRONTIER_TRAINER_HIKER_RAIDEN, FRONTIER_TRAINER_SOCIALITE_CARMEN },
    { FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_CLOWN_PRESCOT },
    { FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_ACE_TRAINER_DANIELA },
    { FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_IDOL_UTAH },
    { FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_PI_SERGEI },
    { FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_BREEDER_ANTONIA },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA }
};

static const u16 sBattleTowerBossTrainerRangesPerRoom[][2] = {
    { FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_SOCIALITE_CARMEN },
    { FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_CLOWN_PRESCOT },
    { FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_ACE_TRAINER_DANIELA },
    { FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_IDOL_UTAH },
    { FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_PI_SERGEI },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_BREEDER_ANTONIA },
    { FRONTIER_TRAINER_ACE_TRAINER_SAWYER, FRONTIER_TRAINER_VETERAN_ALFRED },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA }
};

u16 BattleTower_GetTrainerIDForRoomAndOpponentNum(BattleTower *battleTower, u8 roomNum, u8 opponentNum, int challengeMode)
{
    u16 trainerID;

    if (challengeMode == BATTLE_TOWER_MODE_SINGLE) {
        if (roomNum == 2 && opponentNum == BT_OPPONENTS_COUNT - 1) { // 21st battle
            return FRONTIER_TRAINER_TOWER_TYCOON_PALMER_SILVER;
        }

        if (roomNum == 6 && opponentNum == BT_OPPONENTS_COUNT - 1) { // 49th battle
            return FRONTIER_TRAINER_TOWER_TYCOON_PALMER_GOLD;
        }
    }

    if (roomNum < 7) {
        if (opponentNum == BT_OPPONENTS_COUNT - 1) {
            trainerID = sBattleTowerBossTrainerRangesPerRoom[roomNum][1] - sBattleTowerBossTrainerRangesPerRoom[roomNum][0] + 1;
            trainerID = sBattleTowerBossTrainerRangesPerRoom[roomNum][0] + (BattleTower_GetRandom(battleTower) % trainerID);
        } else {
            trainerID = sBattleTowerTrainerRangesPerRoom[roomNum][1] - sBattleTowerTrainerRangesPerRoom[roomNum][0] + 1;
            trainerID = sBattleTowerTrainerRangesPerRoom[roomNum][0] + (BattleTower_GetRandom(battleTower) % trainerID);
        }
    } else {
        trainerID = sBattleTowerTrainerRangesPerRoom[7][1] - sBattleTowerTrainerRangesPerRoom[7][0] + 1;
        trainerID = sBattleTowerTrainerRangesPerRoom[7][0] + (BattleTower_GetRandom(battleTower) % trainerID);
    }

    return trainerID;
}

static BattleFrontierTrainerData *sub_0204B184(FrontierDataDTO *param0, u16 param1, int heapID)
{
    MessageLoader *v1 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FRONTIER_TRAINER_NAMES, heapID);

    MI_CpuClear8(param0, sizeof(FrontierDataDTO));

    BattleFrontierTrainerData *v0 = sub_0204B630(param1, heapID);

    param0->trDataDTO.trainerID = param1;
    param0->trDataDTO.unk_18[0] = 0xFFFF;
    param0->trDataDTO.unk_18[1] = param1 * 3;
    param0->trDataDTO.trainerType = v0->trainerType;

    Strbuf *v2 = MessageLoader_GetNewStrbuf(v1, param1);

    Strbuf_ToChars(v2, &param0->trDataDTO.trainerName[0], TRAINER_NAME_LEN + 1);
    Strbuf_Free(v2);
    MessageLoader_Free(v1);

    return v0;
}

static const u16 Unk_020EBD50[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW
};

static u32 sub_0204B1E8(BattleTower *battleTower, FrontierPokemonDataDTO *param1, u16 param2, u32 param3, u32 param4, u8 ivs, u8 param6, BOOL param7, int param8)
{
    int v0;
    u32 v2;
    BattleFrontierPokemonData v4;

    MI_CpuClear8(param1, sizeof(FrontierPokemonDataDTO));
    sub_0204B640(&v4, param2);

    param1->species = v4.species;
    param1->form = v4.form;

    if (param7) {
        param1->item = Unk_020EBD50[param6];
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
            v2 = (BattleTower_GetRandom(battleTower) | BattleTower_GetRandom(battleTower) << 16);
        } while ((v4.nature != Pokemon_GetNatureOf(v2)) || (Pokemon_IsPersonalityShiny(param3, v2) == 1));

        param1->personality = v2;
    } else {
        param1->personality = param4;
        v2 = param4;
    }

    param1->hpIV = ivs;
    param1->atkIV = ivs;
    param1->defIV = ivs;
    param1->speedIV = ivs;
    param1->spAtkIV = ivs;
    param1->spDefIV = ivs;

    int v1 = 0;

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

BOOL sub_0204B3B8(BattleTower *battleTower, FrontierDataDTO *param1, u16 partnerBattleTowerID, int partysize, u16 *param4, u16 *param5, UnkStruct_0204B404 *param6, int heapID)
{
    BOOL v0 = FALSE;
    BattleFrontierTrainerData *trainerData = sub_0204B184(param1, partnerBattleTowerID, heapID);
    v0 = sub_0204B470(battleTower, trainerData, partnerBattleTowerID, &param1->monDataDTO[0], partysize, param4, param5, param6, heapID);

    Heap_Free(trainerData);

    return v0;
}

void sub_0204B404(BattleTower *battleTower, FrontierDataDTO *param1, u16 partnerBattleTowerID, BOOL param3, const UnkStruct_0204B404 *param4, int heapID)
{
    u8 ivs = 0;
    BattleFrontierTrainerData *v2 = sub_0204B184(param1, partnerBattleTowerID, heapID);
    ivs = BattleTower_GetIVsFromTrainerID(partnerBattleTowerID);

    for (int v0 = 0; v0 < 2; v0++) {
        sub_0204B1E8(battleTower, &(param1->monDataDTO[v0]), param4->unk_04[v0], param4->unk_00, param4->unk_08[v0], ivs, v0, param3, heapID);
    }

    Heap_Free(v2);
}

static BOOL sub_0204B470(BattleTower *battleTower, BattleFrontierTrainerData *trainerData, u16 partnerBattleTowerID, FrontierPokemonDataDTO *param3, u8 partySize, u16 *param5, u16 *param6, UnkStruct_0204B404 *param7, int param8)
{
    int v0, v1;
    u8 ivs;
    u8 v3;
    u32 v4;
    int v5;
    int v6[4];
    u32 v7[4];
    int v8;
    int v9;
    BOOL v10 = FALSE;
    BattleFrontierPokemonData v11;
    BattleFrontierPokemonData v12;

    GF_ASSERT(partySize <= 4);

    v8 = 0;
    v9 = 0;

    while (v8 != partySize) {
        v3 = BattleTower_GetRandom(battleTower) % trainerData->numSets;
        v5 = trainerData->setIDs[v3];

        sub_0204B640(&v12, v5);

        for (v0 = 0; v0 < v8; v0++) {
            sub_0204B640(&v11, v6[v0]);

            if (v11.species == v12.species) {
                break;
            }
        }

        if (v0 != v8) {
            continue;
        }

        if (param5 != NULL) {
            for (v0 = 0; v0 < partySize; v0++) {
                if (param5[v0] == v12.species) {
                    break;
                }
            }

            if (v0 != partySize) {
                continue;
            }
        }

        if (v9 < 50) {
            for (v0 = 0; v0 < v8; v0++) {
                sub_0204B640(&v11, v6[v0]);

                if ((v11.item) && (v11.item == v12.item)) {
                    break;
                }
            }

            if (v0 != v8) {
                v9++;
                continue;
            }

            if (param6 != NULL) {
                for (v0 = 0; v0 < partySize; v0++) {
                    if ((param6[v0] == v12.item) && (param6[v0] != 0)) {
                        break;
                    }
                }

                if (v0 != partySize) {
                    v9++;
                    continue;
                }
            }
        }

        v6[v8] = v5;
        v8++;
    }

    ivs = BattleTower_GetIVsFromTrainerID(partnerBattleTowerID);
    v4 = (BattleTower_GetRandom(battleTower) | (BattleTower_GetRandom(battleTower) << 16));

    if (v9 >= 50) {
        v10 = TRUE;
    }

    for (v0 = 0; v0 < v8; v0++) {
        v7[v0] = sub_0204B1E8(battleTower, &(param3[v0]), v6[v0], v4, 0, ivs, v0, v10, param8);
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

static void sub_0204B640(BattleFrontierPokemonData *param0, int param1)
{
    NARC_ReadWholeMemberByIndexPair(param0, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM, param1);
}
