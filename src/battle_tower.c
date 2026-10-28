#include "battle_tower.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "constants/string.h"
#include "generated/battle_tower_modes.h"
#include "generated/frontier_trainers.h"
#include "generated/object_events_gfx.h"
#include "generated/species_data_params.h"
#include "generated/trainer_classes.h"

#include "struct_defs/battle_tower.h"
#include "struct_defs/frontier_pokemon_base.h"
#include "struct_defs/frontier_trainer_base.h"
#include "struct_defs/wifi_battle_tower_data.h"

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
#include "string_gf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02049D08.h"
#include "wifi_battle_tower_save.h"

static BOOL BattleTower_CreateRandomTrainerParty(BattleTower *battleTower, FrontierTrainerBase *trainerData, u16 battleTowerTrainerID, FrontierPokemon *monDataDTO, u8 partySize, u16 *species, u16 *items, BattleTowerPartnerData *partnerData, enum HeapID heapID);
static void *BattleTower_GetTrainerBase(u16 trainerID, enum HeapID heapID);
static void BattleTower_GetPokemonBase(FrontierPokemonBase *monData, int narcIdx);

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
    String *speciesName, *unused;
    Pokedex *pokedex;
    StringTemplate *bannedSpeciesList;
    MessageLoader *speciesNameLoader;

    speciesName = String_Init(14, HEAP_ID_FIELD1);
    unused = String_Init(2, HEAP_ID_FIELD1);
    pokedex = SaveData_GetPokedex(saveData);
    speciesNameLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD1);
    bannedSpeciesList = StringTemplate_New(BATTLE_FRONTIER_BANLIST_SIZE + 1, 14, HEAP_ID_FIELD1);

    StringTemplate_SetNumber(bannedSpeciesList, 0, numPokemonRequired, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);

    for (i = 0; i < BATTLE_FRONTIER_BANLIST_SIZE; i++) {
        bannedSpecies = Pokemon_GetBattleFrontierBanlistEntry(i);

        if (Pokedex_HasSeenSpecies(pokedex, bannedSpecies)) {
            MessageLoader_GetString(speciesNameLoader, bannedSpecies, speciesName);
            StringTemplate_SetString(bannedSpeciesList, (*outNumBannedSeen) + 1, speciesName, unused2, unused3, GAME_LANGUAGE);
            (*outNumBannedSeen)++;
        }
    }

    MessageLoader_Free(speciesNameLoader);
    String_Free(unused);
    String_Free(speciesName);

    return bannedSpeciesList;
}

u16 BattleTower_GetObjectIDFromTrainerClass(u8 trainerClass)
{
    for (int i = 0; i < (NELEMS(sTrainerClassToObjectID)); i++) {
        if (sTrainerClassToObjectID[i][0] == trainerClass) {
            return sTrainerClassToObjectID[i][1];
        }
    }

    return OBJ_EVENT_GFX_SCHOOL_KID_M;
}

u16 BattleTower_ReceivePlayerData(FieldSystem *fieldSystem, const u16 *recvBuf)
{
    u16 duplicateFlags = 0;
    BattleTower *battleTower = fieldSystem->battleTower;

    battleTower->partnerGender = (u8)recvBuf[0];
    battleTower->unk_16[0] = recvBuf[1];
    battleTower->unk_16[1] = recvBuf[2];
    battleTower->unk_14 = recvBuf[3];
    battleTower->partnerID = BT_PARTNERS_COUNT + battleTower->partnerGender;

    if ((battleTower->unk_2E[0] == battleTower->unk_16[0]) || (battleTower->unk_2E[0] == battleTower->unk_16[1])) {
        duplicateFlags += 1;
    }

    if ((battleTower->unk_2E[1] == battleTower->unk_16[0]) || (battleTower->unk_2E[1] == battleTower->unk_16[1])) {
        duplicateFlags += 2;
    }

    return duplicateFlags;
}

u16 BattleTower_ReceiveTrainers(FieldSystem *fieldSystem, const u16 *recvBuf)
{
    BattleTower *battleTower = fieldSystem->battleTower;

    if (CommSys_CurNetId() == 0) {
        return 0;
    }

    MI_CpuCopy8(recvBuf, battleTower->trainerIDs, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
    return 1;
}

BOOL BattleTower_ReceiveShouldRetire(FieldSystem *fieldSystem, const u16 *recvBuf)
{
    BattleTower *battleTower = fieldSystem->battleTower;

    if (battleTower->unk_10_3 || recvBuf[0]) {
        return TRUE;
    }

    return FALSE;
}

void BattleTower_SendPlayerData(BattleTower *battleTower, SaveData *saveData)
{
    int i;
    Party *party;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    battleTower->unk_83E[0] = TrainerInfo_Gender(trainerInfo);
    party = SaveData_GetParty(saveData);

    for (i = 0; i < 2; i++) {
        battleTower->unk_83E[1 + i] = Pokemon_GetValue(Party_GetPokemonBySlotIndex(party, battleTower->unk_2A[i]), MON_DATA_SPECIES, NULL);
    }

    battleTower->unk_83E[3] = WifiBattleTowerRecord_UpdateRoomNum(battleTower->unk_74, 3, 0);
}

void BattleTower_SendTrainers(BattleTower *battleTower)
{
    MI_CpuCopy8(battleTower->trainerIDs, battleTower->unk_83E, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
}

void BattleTower_SendShouldRetire(BattleTower *battleTower, BOOL shouldRetire)
{
    battleTower->unk_10_3 = shouldRetire;
    battleTower->unk_83E[0] = shouldRetire;
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

static FrontierTrainerBase *BattleTower_GetTrainer(FrontierOpponent *opponent, u16 trainerID, enum HeapID heapID)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FRONTIER_TRAINER_NAMES, heapID);

    MI_CpuClear8(opponent, sizeof(FrontierOpponent));

    FrontierTrainerBase *trainerBase = BattleTower_GetTrainerBase(trainerID, heapID);

    opponent->trainer.trainerID = trainerID;
    opponent->trainer.introMsg[0] = 0xFFFF;
    opponent->trainer.introMsg[1] = trainerID * 3;
    opponent->trainer.trainerType = trainerBase->trainerType;

    String *string = MessageLoader_GetNewString(msgLoader, trainerID);

    String_ToChars(string, &opponent->trainer.trainerName[0], TRAINER_NAME_LEN + 1);
    String_Free(string);
    MessageLoader_Free(msgLoader);

    return trainerBase;
}

static const u16 sBattleTowerReservedItems[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW
};

static u32 BattleTower_CopySetToPokemonDataDTO(BattleTower *battleTower, FrontierPokemon *monDataDTO, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, BOOL giveReservedItem, enum HeapID heapID)
{
    int i;
    u32 randomPersonality;
    FrontierPokemonBase monData;

    MI_CpuClear8(monDataDTO, sizeof(FrontierPokemon));
    BattleTower_GetPokemonBase(&monData, setID);

    monDataDTO->species = monData.species;
    monDataDTO->form = monData.form;

    if (giveReservedItem) {
        monDataDTO->item = sBattleTowerReservedItems[partyIndex];
    } else {
        monDataDTO->item = monData.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        monDataDTO->moves[i] = monData.moves[i];

        if (monData.moves[i] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    monDataDTO->otID = otID;

    if (givenPersonality == 0) {
        do {
            randomPersonality = (BattleTower_GetRandom(battleTower) | BattleTower_GetRandom(battleTower) << 16);
        } while ((monData.nature != Pokemon_GetNatureOf(randomPersonality)) || (Pokemon_IsPersonalityShiny(otID, randomPersonality) == 1));

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

    int evs = 0;

    for (i = 0; i < STAT_MAX; i++) {
        if (monData.evFlags & FlagIndex(i)) {
            evs++;
        }
    }

    if ((MAX_EVS_ALL_STATS / evs) > MAX_EVS_SINGLE_STAT) {
        evs = MAX_EVS_SINGLE_STAT;
    } else {
        evs = MAX_EVS_ALL_STATS / evs;
    }

    for (i = 0; i < STAT_MAX; i++) {
        if (monData.evFlags & FlagIndex(i)) {
            monDataDTO->evList[i] = evs;
        }
    }

    monDataDTO->combinedPPUps = 0;
    monDataDTO->language = gGameLanguage;

    i = SpeciesData_GetSpeciesValue(monDataDTO->species, SPECIES_DATA_ABILITY_2);

    if (i) {
        if (monDataDTO->personality & 1) {
            monDataDTO->ability = i;
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

BOOL BattleTower_CreatePartnerTrainerParty(BattleTower *battleTower, FrontierOpponent *opponentDataDTO, u16 battleTowerTrainerID, int partySize, u16 *species, u16 *items, BattleTowerPartnerData *partnerData, enum HeapID heapID)
{
    BOOL result = FALSE;
    FrontierTrainerBase *trainerBase = BattleTower_GetTrainer(opponentDataDTO, battleTowerTrainerID, heapID);
    result = BattleTower_CreateRandomTrainerParty(battleTower, trainerBase, battleTowerTrainerID, &opponentDataDTO->pokemon[0], partySize, species, items, partnerData, heapID);

    Heap_Free(trainerBase);

    return result;
}

void BattleTower_RestorePartnerParty(BattleTower *battleTower, FrontierOpponent *opponentDataDTO, u16 battleTowerTrainerID, BOOL giveReservedItem, const BattleTowerPartnerData *partnerData, enum HeapID heapID)
{
    u8 ivs = 0;
    FrontierTrainerBase *trainerBase = BattleTower_GetTrainer(opponentDataDTO, battleTowerTrainerID, heapID);
    ivs = BattleTower_GetIVsFromTrainerID(battleTowerTrainerID);

    for (int i = 0; i < 2; i++) {
        BattleTower_CopySetToPokemonDataDTO(battleTower, &(opponentDataDTO->pokemon[i]), partnerData->monSetIDs[i], partnerData->otID, partnerData->personalities[i], ivs, i, giveReservedItem, heapID);
    }

    Heap_Free(trainerBase);
}

static BOOL BattleTower_CreateRandomTrainerParty(BattleTower *battleTower, FrontierTrainerBase *trainerData, u16 battleTowerTrainerID, FrontierPokemon *monDataDTO, u8 partySize, u16 *species, u16 *items, BattleTowerPartnerData *partnerData, enum HeapID heapID)
{
    int i;
    u8 ivs;
    u8 random;
    u32 otID;
    int setID;
    int setIDs[BT_DOUBLES_PARTY_SIZE];
    u32 personalities[BT_DOUBLES_PARTY_SIZE];
    int partyIndex;
    int dupeItemFailsafeCount;
    BOOL giveReservedItem = FALSE;
    FrontierPokemonBase monDataPrev;
    FrontierPokemonBase monDataCurr;

    GF_ASSERT(partySize <= BT_DOUBLES_PARTY_SIZE);

    partyIndex = 0;
    dupeItemFailsafeCount = 0;

    while (partyIndex != partySize) {
        random = BattleTower_GetRandom(battleTower) % trainerData->numSets;
        setID = trainerData->setIDs[random];

        BattleTower_GetPokemonBase(&monDataCurr, setID);

        for (i = 0; i < partyIndex; i++) {
            BattleTower_GetPokemonBase(&monDataPrev, setIDs[i]);

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
                BattleTower_GetPokemonBase(&monDataPrev, setIDs[i]);

                if ((monDataPrev.item) && (monDataPrev.item == monDataCurr.item)) {
                    break;
                }
            }

            if (i != partyIndex) {
                dupeItemFailsafeCount++;
                continue;
            }

            if (items != NULL) {
                for (i = 0; i < partySize; i++) {
                    if ((items[i] == monDataCurr.item) && (items[i] != 0)) {
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
    otID = (BattleTower_GetRandom(battleTower) | (BattleTower_GetRandom(battleTower) << 16));

    if (dupeItemFailsafeCount >= 50) {
        giveReservedItem = TRUE;
    }

    for (i = 0; i < partyIndex; i++) {
        personalities[i] = BattleTower_CopySetToPokemonDataDTO(battleTower, &(monDataDTO[i]), setIDs[i], otID, 0, ivs, i, giveReservedItem, heapID);
    }

    if (partnerData == NULL) {
        return giveReservedItem;
    }

    partnerData->otID = otID;

    for (i = 0; i < 2; i++) {
        partnerData->monSetIDs[i] = setIDs[i];
        partnerData->personalities[i] = personalities[i];
    }

    return giveReservedItem;
}

static void *BattleTower_GetTrainerBase(u16 trainerID, enum HeapID heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR, trainerID, heapID);
}

static void BattleTower_GetPokemonBase(FrontierPokemonBase *monData, int narcIdx)
{
    NARC_ReadWholeMemberByIndexPair(monData, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM, narcIdx);
}
