#include "overlay104/battle_factory_helpers.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "generated/ai_flags.h"
#include "generated/frontier_trainers.h"

#include "struct_defs/frontier_pokemon_base.h"

#include "overlay104/frontier_opponents.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "communication_information.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "math_util.h"
#include "party.h"
#include "pokemon.h"
#include "trainer_info.h"

static const struct {
    u16 normalMin;
    u16 normalMax;
    u16 finalMin;
    u16 finalMax;
} sBattleFactoryOpponentPools[] = {
    { FRONTIER_TRAINER_YOUNGSTER_JIM, FRONTIER_TRAINER_REPORTER_GINGHAM, FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_SOCIALITE_CARMEN },
    { FRONTIER_TRAINER_HIKER_RAIDEN, FRONTIER_TRAINER_SOCIALITE_CARMEN, FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_CLOWN_PRESCOT },
    { FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_CLOWN_PRESCOT, FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_ACE_TRAINER_DANIELA },
    { FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_ACE_TRAINER_DANIELA, FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_IDOL_UTAH },
    { FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_IDOL_UTAH, FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_PI_SERGEI },
    { FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_PI_SERGEI, FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_BREEDER_ANTONIA },
    { FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_BREEDER_ANTONIA, FRONTIER_TRAINER_ACE_TRAINER_SAWYER, FRONTIER_TRAINER_VETERAN_ALFRED },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA, FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA }
};

static const BattleFactoryPokemonPool sLevel50Pools[] = {
    {
        .trainerIDMax = FRONTIER_TRAINER_CYCLIST_GASPAR,
        .setIDMin = 1,
        .setIDMax = 150,
        .ivs = 0,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_PSYCHIC_ALPHA,
        .setIDMin = 151,
        .setIDMax = 250,
        .ivs = 4,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ACE_TRAINER_YARDLEY,
        .setIDMin = 251,
        .setIDMax = 350,
        .ivs = 8,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_YOUNGSTER_KADEN,
        .setIDMin = 351,
        .setIDMax = 486,
        .ivs = 12,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_JOGGER_COLT,
        .setIDMin = 487,
        .setIDMax = 622,
        .ivs = 16,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_CAMPER_FREDDY,
        .setIDMin = 623,
        .setIDMax = 758,
        .ivs = 20,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ACE_TRAINER_SAWYER,
        .setIDMin = 759,
        .setIDMax = 894,
        .ivs = 24,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_TRAINER_CHERYL_CHERYL,
        .setIDMin = 351,
        .setIDMax = 950,
        .ivs = 31,
        .canBeUpgraded = FALSE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_FACTORY_HEAD_THORTON_GOLD,
        .setIDMin = 351,
        .setIDMax = 486,
        .ivs = 12,
        .canBeUpgraded = FALSE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_SILVER,
        .setIDMin = 351,
        .setIDMax = 486,
        .ivs = 31,
        .canBeUpgraded = FALSE,
    }
};

static const BattleFactoryPokemonPool sOpenLevelOpponentPools[] = {
    {
        .trainerIDMax = FRONTIER_TRAINER_CYCLIST_GASPAR,
        .setIDMin = 351,
        .setIDMax = 486,
        .ivs = 0,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_PSYCHIC_ALPHA,
        .setIDMin = 487,
        .setIDMax = 622,
        .ivs = 4,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ACE_TRAINER_YARDLEY,
        .setIDMin = 623,
        .setIDMax = 758,
        .ivs = 8,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_YOUNGSTER_KADEN,
        .setIDMin = 759,
        .setIDMax = 894,
        .ivs = 12,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_JOGGER_COLT,
        .setIDMin = 351,
        .setIDMax = 950,
        .ivs = 16,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_CAMPER_FREDDY,
        .setIDMin = 351,
        .setIDMax = 950,
        .ivs = 20,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ACE_TRAINER_SAWYER,
        .setIDMin = 351,
        .setIDMax = 950,
        .ivs = 24,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_TRAINER_CHERYL_CHERYL,
        .setIDMin = 351,
        .setIDMax = 950,
        .ivs = 31,
        .canBeUpgraded = FALSE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_FACTORY_HEAD_THORTON_GOLD,
        .setIDMin = 759,
        .setIDMax = 950,
        .ivs = 12,
        .canBeUpgraded = FALSE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_SILVER,
        .setIDMin = 759,
        .setIDMax = 950,
        .ivs = 31,
        .canBeUpgraded = FALSE,
    }
};

static const BattleFactoryPokemonPool sOpenLevelPlayerPools[] = {
    {
        .trainerIDMax = FRONTIER_TRAINER_CYCLIST_GASPAR,
        .setIDMin = 351,
        .setIDMax = 486,
        .ivs = 0,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_PSYCHIC_ALPHA,
        .setIDMin = 487,
        .setIDMax = 622,
        .ivs = 4,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ACE_TRAINER_YARDLEY,
        .setIDMin = 623,
        .setIDMax = 758,
        .ivs = 8,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_YOUNGSTER_KADEN,
        .setIDMin = 759,
        .setIDMax = 894,
        .ivs = 12,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_JOGGER_COLT,
        .setIDMin = 623,
        .setIDMax = 950,
        .ivs = 16,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_CAMPER_FREDDY,
        .setIDMin = 623,
        .setIDMax = 950,
        .ivs = 20,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ACE_TRAINER_SAWYER,
        .setIDMin = 623,
        .setIDMax = 950,
        .ivs = 24,
        .canBeUpgraded = TRUE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_TRAINER_CHERYL_CHERYL,
        .setIDMin = 351,
        .setIDMax = 950,
        .ivs = 31,
        .canBeUpgraded = FALSE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_FACTORY_HEAD_THORTON_GOLD,
        .setIDMin = 759,
        .setIDMax = 950,
        .ivs = 12,
        .canBeUpgraded = FALSE,
    },
    {
        .trainerIDMax = FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_SILVER,
        .setIDMin = 759,
        .setIDMax = 950,
        .ivs = 31,
        .canBeUpgraded = FALSE,
    }
};

static int BattleFactory_GetOpponentTrainerID(u8 challengeType, int currentRound, int trainerOffset);
static const BattleFactoryPokemonPool *GetPlayerPoolForRound(int round, int isOpenLevel);
static u32 BattleFactory_GetBattleType(u8 challengeType);
static u16 BattleFactory_GetAIMask(BattleFactory *battleFactory);

static int BattleFactory_GetOpponentTrainerID(u8 challengeType, int currentRound, int trainerOffset)
{
    if (currentRound >= NELEMS(sBattleFactoryOpponentPools)) {
        currentRound = NELEMS(sBattleFactoryOpponentPools) - 1;
    }

    if (challengeType == FRONTIER_CHALLENGE_SINGLE) {
        int currentStreak = (currentRound * FACTORY_BATTLES_PER_ROUND) + (trainerOffset + 1);

        if (currentStreak == FACTORY_STREAK_SILVER_BATTLE) {
            return FRONTIER_TRAINER_FACTORY_HEAD_THORTON_SILVER;
        } else if (currentStreak == FACTORY_STREAK_GOLD_BATTLE) {
            return FRONTIER_TRAINER_FACTORY_HEAD_THORTON_GOLD;
        }
    }

    int spread, min;
    if (trainerOffset == FACTORY_BATTLES_PER_ROUND - 1 || trainerOffset == (FACTORY_BATTLES_PER_ROUND * 2) - 1) {
        spread = sBattleFactoryOpponentPools[currentRound].finalMax - sBattleFactoryOpponentPools[currentRound].finalMin;
        min = sBattleFactoryOpponentPools[currentRound].finalMin;
    } else {
        spread = sBattleFactoryOpponentPools[currentRound].normalMax - sBattleFactoryOpponentPools[currentRound].normalMin;
        min = sBattleFactoryOpponentPools[currentRound].normalMin;
    }

    return min + LCRNG_Next() % spread;
}

void BattleFactory_PickOpponentTrainers(u8 challengeType, int currentRound, u16 trainerIDs[], u8 numTrainers)
{
    int i = 0;
    do {
        trainerIDs[i] = BattleFactory_GetOpponentTrainerID(challengeType, currentRound, i);

        int j;
        for (j = 0; j < i; j++) {
            if (trainerIDs[j] == trainerIDs[i]) {
                break;
            }
        }

        if (j != i) {
            continue;
        }

        i++;
    } while (i < numTrainers);
}

const BattleFactoryPokemonPool *BattleFactory_GetPokemonPoolForTrainer(int trainerID, BOOL isOpenLevel)
{
    static const BattleFactoryPokemonPool *pools;
    int numPools;
    if (!isOpenLevel) {
        pools = sLevel50Pools;
        numPools = NELEMS(sLevel50Pools);
    } else {
        pools = sOpenLevelOpponentPools;
        numPools = NELEMS(sOpenLevelOpponentPools);
    }

    int i;
    for (i = 0; i < numPools; i++) {
        if (trainerID < pools[i].trainerIDMax) {
            break;
        }
    }

    if (i >= numPools) {
        GF_ASSERT(FALSE);
        i = numPools - 1;
    }

    return &pools[i];
}

static const BattleFactoryPokemonPool *GetPlayerPoolForRound(int round, int isOpenLevel)
{
    if (round >= FACTORY_MAX_DISTINCT_ROUNDS) {
        round = FACTORY_MAX_DISTINCT_ROUNDS - 1;
    }

    if (!isOpenLevel) {
        return &sLevel50Pools[round];
    } else {
        return &sOpenLevelPlayerPools[round];
    }
}

static const int sTradeCountsNeededForUpgrades[] = { 6, 13, 20, 27, 34 };

BOOL BattleFactory_SelectPokemonFromPool(const u16 excludedSpecies[], const u16 excludedItems[], int numExcluded, int numMons, u16 monSetIDs[], int unused, const BattleFactoryPokemonPool *pool, u16 tradeCount, u8 ivList[])
{
    u8 ivs;
    int slot, setIDRange, setID, i;
    FrontierPokemonBase newMon[FACTORY_INITIAL_RENTAL_OPTIONS];

    GF_ASSERT(numMons <= FACTORY_INITIAL_RENTAL_OPTIONS);

    setIDRange = pool->setIDMax - pool->setIDMin;
    slot = 0;

    int numUpgradable = 0;
    if (tradeCount != 0) {
        numUpgradable = NELEMS(sTradeCountsNeededForUpgrades);

        for (i = 0; i < NELEMS(sTradeCountsNeededForUpgrades); i++) {
            if (tradeCount <= sTradeCountsNeededForUpgrades[i]) {
                numUpgradable = i;
                break;
            }
        }
    }

    while (slot != numMons) {
        if (slot >= numMons - numUpgradable && pool->canBeUpgraded == TRUE) {
            setIDRange = pool[1].setIDMax - pool[1].setIDMin;
            setID = pool[1].setIDMax - (LCRNG_Next() % (setIDRange + 1));
            ivs = pool[1].ivs;
        } else {
            setID = pool->setIDMax - (LCRNG_Next() % (setIDRange + 1));
            ivs = pool->ivs;
        }

        BattleFrontier_GetPokemonBase(&newMon[slot], setID, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

        for (i = 0; i < slot; i++) {
            if (newMon[i].species == newMon[slot].species || newMon[i].item == newMon[slot].item) {
                break;
            }
        }

        if (i != slot) {
            continue;
        }

        for (i = 0; i < numExcluded; i++) {
            if (newMon[slot].species == excludedSpecies[i] || newMon[slot].item == excludedItems[i]) {
                break;
            }
        }

        if (i != numExcluded) {
            continue;
        }

        monSetIDs[slot] = setID;
        ivList[slot] = ivs;

        slot++;
    }

    return FALSE;
}

u8 BattleFactory_GetPlayerPartySize(u8 challengeType)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return FACTORY_PARTY_SIZE_SOLO;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        return FACTORY_PARTY_SIZE_MULTI;
    }

    return 0;
}

u8 BattleFactory_GetOpponentPartySize(u8 challengeType, BOOL includePartnersMons)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return FACTORY_PARTY_SIZE_SOLO;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (includePartnersMons == FALSE) {
            return FACTORY_PARTY_SIZE_MULTI;
        } else {
            return FACTORY_PARTY_SIZE_MULTI * 2;
        }
    }

    return 0;
}

void BattleFactory_SelectInitialRentalOptions(u16 round, u8 isOpenLevel, u16 *monSetIDs, FrontierPokemon *mons, u8 *ivs, u32 *personalities, u16 tradeCount, u16 *excludedSpecies, u16 *unused)
{
    const BattleFactoryPokemonPool *pool = GetPlayerPoolForRound(round, isOpenLevel);

    if (excludedSpecies == NULL) {
        BattleFactory_SelectPokemonFromPool(NULL, NULL, 0, FACTORY_INITIAL_RENTAL_OPTIONS, monSetIDs, HEAP_ID_FIELD2, pool, tradeCount, ivs);
    } else {
        BattleFactory_SelectPokemonFromPool(excludedSpecies, excludedSpecies, FACTORY_INITIAL_RENTAL_OPTIONS, FACTORY_INITIAL_RENTAL_OPTIONS, monSetIDs, HEAP_ID_FIELD2, pool, tradeCount, ivs);
    }

    BattleFrontier_LoadFrontierPokemon(mons, monSetIDs, ivs, NULL, personalities, FACTORY_INITIAL_RENTAL_OPTIONS, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
}

void BattleFactory_SelectInitialOpponentMons(u8 numMons, u16 trainerID, u8 isOpenLevel, FrontierPokemon *excludedMons, u16 *monSetIDs, FrontierPokemon *mons, u8 *ivList, u32 *personalities, int numExcluded)
{
    int i;
    FrontierPokemon mon;
    u16 excludedSpecies[FACTORY_INITIAL_RENTAL_OPTIONS * 2];
    u16 excludedItems[FACTORY_INITIAL_RENTAL_OPTIONS * 2];

    const BattleFactoryPokemonPool *pool = BattleFactory_GetPokemonPoolForTrainer(trainerID, isOpenLevel);

    for (i = 0; i < numExcluded; i++) {
        mon = excludedMons[i];
        excludedSpecies[i] = mon.species;
        excludedItems[i] = mon.item;
    }

    BattleFactory_SelectPokemonFromPool(excludedSpecies, excludedItems, numExcluded, numMons, monSetIDs, HEAP_ID_FIELD2, pool, 0, ivList);
    BattleFrontier_LoadFrontierPokemon(mons, monSetIDs, ivList, NULL, personalities, numMons, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
}

FieldBattleDTO *BattleFactory_SetupBattle(BattleFactory *battleFactory, FieldFrontierDTO *fieldData)
{
    int i;
    FrontierTrainer trainer;

    u8 playerPartySize = BattleFactory_GetPlayerPartySize(battleFactory->challengeType);
    u8 opponentPartySize = BattleFactory_GetOpponentPartySize(battleFactory->challengeType, 0);

    Party_HealAllMembers(battleFactory->playersParty);
    Party_HealAllMembers(battleFactory->opponentsParty);

    FieldBattleDTO *battleDTO = FieldBattleDTO_New(HEAP_ID_FIELD2, BattleFactory_GetBattleType(battleFactory->challengeType));
    FieldBattleDTO_InitFromGameState(battleDTO, NULL, fieldData->saveData, fieldData->mapHeaderID, fieldData->journalEntry, fieldData->bagCursor, fieldData->subscreenCursorOn);

    battleDTO->background = BACKGROUND_BATTLE_FACTORY;
    battleDTO->terrain = TERRAIN_BATTLE_FACTORY;

    Party_InitWithCapacity(battleDTO->parties[BATTLER_PLAYER_1], playerPartySize);
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < playerPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(battleFactory->playersParty, i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

    Heap_Free(BattleFrontier_GetTrainer(&trainer, battleFactory->trainerIDs[battleFactory->currentBattle], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    FieldBattleDTO_InitFrontierTrainer(battleDTO, &trainer, opponentPartySize, BATTLER_ENEMY_1, HEAP_ID_FIELD2);
    Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_1], BattleFactory_GetOpponentPartySize(battleFactory->challengeType, 0));

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleDTO->trainer[i].header.aiMask = BattleFactory_GetAIMask(battleFactory);
    }

    mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < opponentPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(battleFactory->opponentsParty, i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_1);
    }

    Heap_Free(mon);

    switch (battleFactory->challengeType) {
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

        TrainerInfo_Copy(CommInfo_TrainerInfo(1 - CommSys_CurNetId()), battleDTO->trainerInfo[BATTLER_PLAYER_2]);

        Heap_Free(BattleFrontier_GetTrainer(&trainer, battleFactory->trainerIDs[battleFactory->currentBattle + 7], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

        FieldBattleDTO_InitFrontierTrainer(battleDTO, &trainer, opponentPartySize, BATTLER_ENEMY_2, HEAP_ID_FIELD2);
        Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_2], BattleFactory_GetOpponentPartySize(battleFactory->challengeType, 0));

        mon = Pokemon_New(HEAP_ID_FIELD2);

        for (i = 0; i < opponentPartySize; i++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(battleFactory->opponentsParty, opponentPartySize + i), mon);
            FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_2);
        }

        Heap_Free(mon);
        break;
    }

    return battleDTO;
}

static u32 BattleFactory_GetBattleType(u8 challengeType)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        return BATTLE_TYPE_FRONTIER_SINGLES;
    case FRONTIER_CHALLENGE_DOUBLE:
        return BATTLE_TYPE_FRONTIER_DOUBLES;
    case FRONTIER_CHALLENGE_MULTI:
        return BATTLE_TYPE_FRONTIER_LINK | BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        return BATTLE_TYPE_FRONTIER_LINK | BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2;
    }

    return BATTLE_TYPE_FRONTIER_SINGLES;
}

u8 BattleFactory_GetPokemonLevel(BattleFactory *battleFactory)
{
    if (battleFactory->isOpenLevel == FALSE) {
        return 50;
    }

    return 100;
}

void BattleFactory_CreateInitialRentalParty(BattleFactory *battleFactory)
{
    BattleFrontier_LoadFrontierPokemon(battleFactory->initialRentalMons, battleFactory->initialRentalSetIDs, battleFactory->initialRentalIVs, battleFactory->initialRentalPersonalities, NULL, FACTORY_INITIAL_RENTAL_OPTIONS, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
    Party_Init(battleFactory->playersParty);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);
    for (int i = 0; i < FACTORY_INITIAL_RENTAL_OPTIONS; i++) {
        FrontierPokemon_InitPokemon(&battleFactory->initialRentalMons[i], mon, BattleFactory_GetPokemonLevel(battleFactory));
        BattleFactory_AddRentalPokemonToParty(battleFactory->saveData, battleFactory->playersParty, mon);
    }

    Heap_Free(mon);
}

void BattleFactory_UpdatePartnersParty(BattleFactory *battleFactory)
{
    FrontierPokemon mons[2];

    int partySize = Party_GetCurrentCount(battleFactory->playersParty);

    for (int i = partySize; i > 2; i--) {
        Party_RemovePokemonBySlotIndex(battleFactory->playersParty, i - 1);
    }

    BattleFrontier_LoadFrontierPokemon(mons, battleFactory->partnerRentalSetIDs, battleFactory->partnerRentalIVs, battleFactory->partnerRentalPersonalities, NULL, 2, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (int i = 0; i < 2; i++) {
        FrontierPokemon_InitPokemon(&mons[i], mon, BattleFactory_GetPokemonLevel(battleFactory));
        BattleFactory_AddRentalPokemonToParty(battleFactory->saveData, battleFactory->playersParty, mon);
        battleFactory->playerMonSetIDs[i + 2] = battleFactory->partnerRentalSetIDs[i];
    }

    Heap_Free(mon);
}

BOOL BattleFactory_IsMultiplayerChallenge(u8 challengeType)
{
    return challengeType == FRONTIER_CHALLENGE_MULTI || challengeType == FRONTIER_CHALLENGE_MULTI_WFC;
}

static u16 BattleFactory_GetAIMask(BattleFactory *battleFactory)
{
    if (battleFactory->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (battleFactory->trainerIDs[battleFactory->currentBattle] == FRONTIER_TRAINER_FACTORY_HEAD_THORTON_SILVER
            || battleFactory->trainerIDs[battleFactory->currentBattle] == FRONTIER_TRAINER_FACTORY_HEAD_THORTON_GOLD) {
            return AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;
        }
    }

    u16 round = BattleFactory_GetCurrentRound(battleFactory);
    u16 aiMask = AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;

    switch (round + 1) {
    case 1:
    case 2:
        aiMask = AI_FLAG_NONE;
        break;
    case 3:
    case 4:
        aiMask = AI_FLAG_BASIC;
        break;
    }

    return aiMask;
}

u16 BattleFactory_GetCurrentRound(BattleFactory *battleFactory)
{
    u16 currentRound = battleFactory->currentRound;

    if (BattleFactory_IsMultiplayerChallenge(battleFactory->challengeType) == TRUE) {
        if (battleFactory->unk_57E > battleFactory->currentRound) {
            currentRound = battleFactory->unk_57E;
        }
    }

    return currentRound;
}
