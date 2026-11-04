#include "battle_tower_trainers.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "constants/battle_tower.h"
#include "constants/pokemon.h"
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
#include "battle_tower.h"
#include "battle_tower_save.h"
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

static BOOL InitStatTrainer(BattleTower *battleTower, FrontierTrainerBase *trainerData, u16 partnerBattleTowerID, FrontierPokemon *param3, u8 partySize, u16 *param5, u16 *param6, BattleTowerPartnerData *param7, enum HeapID heapID);
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
    String *speciesName, *unused;
    Pokedex *pokedex;
    StringTemplate *bannedSpeciesList;

    speciesName = String_Init(14, HEAP_ID_FIELD1);
    unused = String_Init(2, HEAP_ID_FIELD1);
    pokedex = SaveData_GetPokedex(saveData);
    MessageLoader *speciesNameLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD1);
    bannedSpeciesList = StringTemplate_New(BATTLE_FRONTIER_BANLIST_SIZE + 1, 14, HEAP_ID_FIELD1);

    StringTemplate_SetNumber(bannedSpeciesList, 0, numPokemonRequired, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);

    for (u8 i = 0; i < BATTLE_FRONTIER_BANLIST_SIZE; i++) {
        u16 bannedSpecies = Pokemon_GetBattleFrontierBanlistEntry(i);

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
    for (int i = 0; i < NELEMS(sTrainerClassToObjectID); i++) {
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

    if (battleTower->selectedSpecies[0] == battleTower->unk_16[0] || battleTower->selectedSpecies[0] == battleTower->unk_16[1]) {
        duplicateFlags += 1;
    }

    if (battleTower->selectedSpecies[1] == battleTower->unk_16[0] || battleTower->selectedSpecies[1] == battleTower->unk_16[1]) {
        duplicateFlags += 2;
    }

    return duplicateFlags;
}

u16 BattleTower_ReceiveTrainers(FieldSystem *fieldSystem, const u16 *recvBuf)
{
    BattleTower *battleTower = fieldSystem->battleTower;

    if (CommSys_CurNetId() == 0) {
        return FALSE;
    }

    MI_CpuCopy8(recvBuf, battleTower->trainerIDs, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
    return TRUE;
}

BOOL BattleTower_ReceiveShouldRetire(FieldSystem *fieldSystem, const u16 *recvBuf)
{
    BattleTower *battleTower = fieldSystem->battleTower;

    if (battleTower->isRetiring || recvBuf[0]) {
        return TRUE;
    }

    return FALSE;
}

void BattleTower_SendPlayerData(BattleTower *battleTower, SaveData *saveData)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    battleTower->commPayload[0] = TrainerInfo_Gender(trainerInfo);
    Party *pary = SaveData_GetParty(saveData);

    for (int i = 0; i < 2; i++) {
        battleTower->commPayload[1 + i] = Pokemon_GetValue(Party_GetPokemonBySlotIndex(pary, battleTower->partySlots[i]), MON_DATA_SPECIES, NULL);
    }

    battleTower->commPayload[3] = WifiBattleTowerRecord_UpdateRoomNum(battleTower->wifiRecord, 3, 0);
}

void BattleTower_SendTrainers(BattleTower *battleTower)
{
    MI_CpuCopy8(battleTower->trainerIDs, battleTower->commPayload, TOWER_BATTLES_PER_ROUND * 2 * sizeof(u16));
}

void BattleTower_SendShouldRetire(BattleTower *battleTower, BOOL shouldRetire)
{
    battleTower->isRetiring = shouldRetire;
    battleTower->commPayload[0] = shouldRetire;
}

static const u16 sBattleTowerOpponentPools[][2] = {
    { FRONTIER_TRAINER_YOUNGSTER_JIM, FRONTIER_TRAINER_REPORTER_GINGHAM },
    { FRONTIER_TRAINER_HIKER_RAIDEN, FRONTIER_TRAINER_SOCIALITE_CARMEN },
    { FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_CLOWN_PRESCOT },
    { FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_ACE_TRAINER_DANIELA },
    { FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_IDOL_UTAH },
    { FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_PI_SERGEI },
    { FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_BREEDER_ANTONIA },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA }
};

static const u16 sBattleTowerBossOpponentPools[][2] = {
    { FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_SOCIALITE_CARMEN },
    { FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_CLOWN_PRESCOT },
    { FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_ACE_TRAINER_DANIELA },
    { FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_IDOL_UTAH },
    { FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_PI_SERGEI },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_BREEDER_ANTONIA },
    { FRONTIER_TRAINER_ACE_TRAINER_SAWYER, FRONTIER_TRAINER_VETERAN_ALFRED },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA }
};

u16 BattleTower_GetOpponentTrainerID(BattleTower *battleTower, u8 currentRound, u8 opponentNum, int challengeMode)
{
    if (challengeMode == BATTLE_TOWER_MODE_SINGLE) {
        if (currentRound == 2 && opponentNum == TOWER_BATTLES_PER_ROUND - 1) {
            return FRONTIER_TRAINER_TOWER_TYCOON_PALMER_SILVER;
        }

        if (currentRound == 6 && opponentNum == TOWER_BATTLES_PER_ROUND - 1) {
            return FRONTIER_TRAINER_TOWER_TYCOON_PALMER_GOLD;
        }
    }

    if (currentRound < 7) {
        if (opponentNum == TOWER_BATTLES_PER_ROUND - 1) {
            u16 spread = sBattleTowerBossOpponentPools[currentRound][1] - sBattleTowerBossOpponentPools[currentRound][0] + 1;
            return sBattleTowerBossOpponentPools[currentRound][0] + (BattleTower_GetRandom(battleTower) % spread);
        } else {
            u16 spread = sBattleTowerOpponentPools[currentRound][1] - sBattleTowerOpponentPools[currentRound][0] + 1;
            return sBattleTowerOpponentPools[currentRound][0] + (BattleTower_GetRandom(battleTower) % spread);
        }
    } else {
        u16 spread = sBattleTowerOpponentPools[7][1] - sBattleTowerOpponentPools[7][0] + 1;
        return sBattleTowerOpponentPools[7][0] + (BattleTower_GetRandom(battleTower) % spread);
    }
}

static FrontierTrainerBase *BattleTower_GetTrainer(FrontierOpponent *trainer, u16 trainerID, enum HeapID heapID)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FRONTIER_TRAINER_NAMES, heapID);

    MI_CpuClear8(trainer, sizeof(FrontierOpponent));

    FrontierTrainerBase *trainerBase = BattleTower_GetTrainerBase(trainerID, heapID);

    trainer->trainer.trainerID = trainerID;
    trainer->trainer.introMsg[0] = 0xFFFF;
    trainer->trainer.introMsg[1] = trainerID * 3;
    trainer->trainer.trainerType = trainerBase->trainerType;

    String *string = MessageLoader_GetNewString(msgLoader, trainerID);

    String_ToChars(string, &trainer->trainer.trainerName[0], TRAINER_NAME_LEN + 1);
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

static u32 InitFrontierPokemon(BattleTower *battleTower, FrontierPokemon *mon, u16 monSetID, u32 otID, u32 personality, u8 ivs, u8 index, BOOL giveReservedItem, enum HeapID heapID)
{
    int i;
    u32 newPersonality;
    FrontierPokemonBase monBase;

    MI_CpuClear8(mon, sizeof(FrontierPokemon));
    BattleTower_GetPokemonBase(&monBase, monSetID);

    mon->species = monBase.species;
    mon->form = monBase.form;

    if (giveReservedItem) {
        mon->item = sBattleTowerReservedItems[index];
    } else {
        mon->item = monBase.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        mon->moves[i] = monBase.moves[i];

        if (monBase.moves[i] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    mon->otID = otID;

    if (personality == 0) {
        do {
            newPersonality = (BattleTower_GetRandom(battleTower) | BattleTower_GetRandom(battleTower) << 16);
        } while (monBase.nature != Pokemon_GetNatureOf(newPersonality) || Pokemon_IsPersonalityShiny(otID, newPersonality) == TRUE);

        mon->personality = newPersonality;
    } else {
        mon->personality = personality;
        newPersonality = personality;
    }

    mon->hpIV = ivs;
    mon->atkIV = ivs;
    mon->defIV = ivs;
    mon->speedIV = ivs;
    mon->spAtkIV = ivs;
    mon->spDefIV = ivs;

    int evs = 0;

    for (i = 0; i < STAT_MAX; i++) {
        if (monBase.evFlags & FlagIndex(i)) {
            evs++;
        }
    }

    if (MAX_EVS_ALL_STATS / evs > MAX_EVS_SINGLE_STAT) {
        evs = MAX_EVS_SINGLE_STAT;
    } else {
        evs = MAX_EVS_ALL_STATS / evs;
    }

    for (i = 0; i < 6; i++) {
        if (monBase.evFlags & FlagIndex(i)) {
            mon->evList[i] = evs;
        }
    }

    mon->combinedPPUps = 0;
    mon->language = gGameLanguage;

    i = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_2);

    if (i) {
        if (mon->personality & 1) {
            mon->ability = i;
        } else {
            mon->ability = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        mon->ability = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_1);
    }

    mon->friendship = friendship;
    MessageLoader_GetSpeciesName(mon->species, heapID, &mon->nickname[0]);

    return newPersonality;
}

BOOL BattleTower_InitStatTrainer(BattleTower *battleTower, FrontierOpponent *partner, u16 partnerBattleTowerID, int partysize, u16 *playersSpecies, u16 *playersItems, BattleTowerPartnerData *trainer, enum HeapID heapID)
{
    BOOL hadConflicts = FALSE;
    FrontierTrainerBase *trainerData = BattleTower_GetTrainer(partner, partnerBattleTowerID, heapID);
    hadConflicts = InitStatTrainer(battleTower, trainerData, partnerBattleTowerID, &partner->pokemon[0], partysize, playersSpecies, playersItems, trainer, heapID);

    Heap_Free(trainerData);

    return hadConflicts;
}

void BattleTower_RestoreStatTrainer(BattleTower *battleTower, FrontierOpponent *partner, u16 partnerBattleTowerID, BOOL useDefaultItems, const BattleTowerPartnerData *partnerSavedData, enum HeapID heapID)
{
    u8 ivs = 0;
    FrontierTrainerBase *trainerBase = BattleTower_GetTrainer(partner, partnerBattleTowerID, heapID);
    ivs = BattleTower_GetIVsFromTrainerID(partnerBattleTowerID);

    for (int i = 0; i < 2; i++) {
        InitFrontierPokemon(battleTower, &partner->pokemon[i], partnerSavedData->monSetIDs[i], partnerSavedData->otID, partnerSavedData->personalities[i], ivs, i, useDefaultItems, heapID);
    }

    Heap_Free(trainerBase);
}

static BOOL InitStatTrainer(BattleTower *battleTower, FrontierTrainerBase *trainerData, u16 partnerBattleTowerID, FrontierPokemon *mons, u8 partySize, u16 *playersSpecies, u16 *playersItems, BattleTowerPartnerData *partner, enum HeapID heapID)
{
    int i;
    u8 ivs;
    u8 random;
    u32 otID;
    int setID;
    int setIDs[BT_DOUBLES_PARTY_SIZE];
    u32 personalities[BT_DOUBLES_PARTY_SIZE];
    int partyIndex, dupeItemFailsafeCount;
    BOOL giveReservedItem = FALSE;
    FrontierPokemonBase monDataPrev;
    FrontierPokemonBase monDataCurr;

    GF_ASSERT(partySize <= BT_DOUBLES_PARTY_SIZE);

    partyIndex = 0;
    dupeItemFailsafeCount = 0;

    while (partyIndex != partySize) {
        u8 rand = BattleTower_GetRandom(battleTower) % trainerData->numSets;
        setID = trainerData->setIDs[rand];

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

        if (playersSpecies != NULL) {
            for (i = 0; i < partySize; i++) {
                if (playersSpecies[i] == monDataCurr.species) {
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

                if (monDataPrev.item && monDataPrev.item == monDataCurr.item) {
                    break;
                }
            }

            if (i != partyIndex) {
                dupeItemFailsafeCount++;
                continue;
            }

            if (playersItems != NULL) {
                for (i = 0; i < partySize; i++) {
                    if (playersItems[i] == monDataCurr.item && playersItems[i] != 0) {
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

    ivs = BattleTower_GetIVsFromTrainerID(partnerBattleTowerID);
    otID = BattleTower_GetRandom(battleTower) | (BattleTower_GetRandom(battleTower) << 16);

    if (dupeItemFailsafeCount >= 50) {
        giveReservedItem = TRUE;
    }

    for (i = 0; i < partyIndex; i++) {
        personalities[i] = InitFrontierPokemon(battleTower, &mons[i], setIDs[i], otID, 0, ivs, i, giveReservedItem, heapID);
    }

    if (partner == NULL) {
        return giveReservedItem;
    }

    partner->otID = otID;

    for (i = 0; i < 2; i++) {
        partner->monSetIDs[i] = setIDs[i];
        partner->personalities[i] = personalities[i];
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
