#include "overlay104/battle_factory.h"

#include <nitro.h>

#include "generated/game_records.h"

#include "struct_defs/battle_frontier.h"

#include "global/utility.h"
#include "overlay104/battle_factory_helpers.h"
#include "overlay104/frontier_communication.h"
#include "overlay104/frontier_opponents.h"

#include "battle_factory_save.h"
#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "game_records.h"
#include "heap.h"
#include "math_util.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "system_vars.h"
#include "vars_flags.h"

static void SetupTrainersAndInitialRentalOptions(BattleFactory *factory);
static void LoadTrainersAndMonsFromSave(BattleFactory *factory);
static u16 GetBattleFactoryAppSelectedIndices(BattleFactoryAppArgs *args, u8 i);
static void SwapMonIndices(BattleFactory *factory, u8 idx1, u8 isPartners);

BattleFactory *BattleFactory_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u8 isOpenLevel)
{
    static BattleFactory *factory;
    factory = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleFactory));
    MI_CpuClear8(factory, sizeof(BattleFactory));

    factory->factorySave = BattleFactorySave_Get(saveData);
    factory->saveData = saveData;
    factory->unused = 11;
    factory->playersParty = Party_New(HEAP_ID_FIELD2);
    factory->opponentsParty = Party_New(HEAP_ID_FIELD2);

    BattleFactorySave *factorySave = factory->factorySave;
    BattleFactoryStreakFlags *streakFlags = BattleFactoryStreakFlags_Get(saveData);

    if (!resumingFromSave) {
        factory->challengeType = challengeType;
        factory->isOpenLevel = isOpenLevel;
        factory->currentBattle = 0;

        BattleFactorySave_Init(factorySave);

        u8 streakActive;
        if (factory->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            streakActive = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(factory->saveData));
        } else {
            streakActive = BattleFactoryStreakFlags_GetFlag(streakFlags, FACTORY_SAVE_STREAK_FLAGS, (factory->isOpenLevel * 4) + factory->challengeType, NULL);
        }

        if (streakActive == TRUE) {
            factory->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(factory->saveData), BattleFrontierStats_GetFactoryLatestStreakIdx(factory->isOpenLevel, factory->challengeType));
            factory->tradeCount = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(factory->saveData), BattleFrontierStats_GetFactoryLatestTradeCountIndex(factory->isOpenLevel, factory->challengeType));
        } else {
            factory->currentStreak = 0;
            factory->tradeCount = 0;
        }

        factory->unused3 = 0;
    } else {
        factory->challengeType = BattleFactorySave_GetMember(factorySave, FACTORY_SAVE_CHALLENGE_TYPE, 0, NULL);
        factory->isOpenLevel = BattleFactorySave_GetMember(factorySave, FACTORY_SAVE_OPEN_LEVEL, 0, NULL);
        factory->currentBattle = BattleFactorySave_GetMember(factorySave, FACTORY_SAVE_CURRENT_BATTLE, 0, NULL);
        factory->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(factory->saveData), BattleFrontierStats_GetFactoryLatestStreakIdx(factory->isOpenLevel, factory->challengeType));
        factory->tradeCount = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(factory->saveData), BattleFrontierStats_GetFactoryLatestTradeCountIndex(factory->isOpenLevel, factory->challengeType));
    }

    factory->currentRound = factory->currentStreak / FACTORY_BATTLES_PER_ROUND;

    if (BattleFactory_IsMultiplayerChallenge(factory->challengeType) == TRUE) {
        BattleFrontier_FlagGeonetLinkInfo(factory->saveData);
    }

    return factory;
}

void BattleFactory_LoadTrainersAndRentalsForRound(BattleFactory *factory, u16 resumingFromSave)
{
    if (!resumingFromSave) {
        SetupTrainersAndInitialRentalOptions(factory);
    } else {
        LoadTrainersAndMonsFromSave(factory);
    }
}

static void SetupTrainersAndInitialRentalOptions(BattleFactory *factory)
{
    int i;
    FrontierPokemon usedMons[FACTORY_INITIAL_RENTAL_OPTIONS * 2];

    BattleFactory_PickOpponentTrainers(factory->challengeType, BattleFactory_GetCurrentRound(factory), factory->trainerIDs, FACTORY_BATTLES_PER_ROUND * 2);

    BattleFactory_SelectInitialRentalOptions(BattleFactory_GetCurrentRound(factory), factory->isOpenLevel, factory->initialRentalSetIDs, factory->initialRentalMons, factory->initialRentalIVs, factory->initialRentalPersonalities, factory->tradeCount, NULL, NULL);

    SwapMonIndices(factory, 4, FALSE);
    SwapMonIndices(factory, 5, FALSE);

    int numPokemonUsed = FACTORY_INITIAL_RENTAL_OPTIONS;

    for (i = 0; i < FACTORY_INITIAL_RENTAL_OPTIONS; i++) {
        usedMons[i] = factory->initialRentalMons[i];
    }

    if (BattleFactory_IsMultiplayerChallenge(factory->challengeType) == TRUE) {
        u16 partnersSpecies[FACTORY_INITIAL_RENTAL_OPTIONS];
        u16 partnersItems[FACTORY_INITIAL_RENTAL_OPTIONS];
        for (i = 0; i < FACTORY_INITIAL_RENTAL_OPTIONS; i++) {
            partnersSpecies[i] = factory->initialRentalMons[i].species;
            partnersItems[i] = factory->initialRentalMons[i].item;
        }

        BattleFactory_SelectInitialRentalOptions(BattleFactory_GetCurrentRound(factory), factory->isOpenLevel, factory->partnerRentalSetIDs, factory->partnerRentalMons, factory->partnerRentalIVs, factory->partnerRentalPersonalities, factory->unk_580, partnersSpecies, partnersItems);

        SwapMonIndices(factory, 4, TRUE);
        SwapMonIndices(factory, 5, TRUE);

        numPokemonUsed = FACTORY_INITIAL_RENTAL_OPTIONS * 2;

        for (i = 0; i < FACTORY_INITIAL_RENTAL_OPTIONS; i++) {
            usedMons[i + FACTORY_INITIAL_RENTAL_OPTIONS] = factory->partnerRentalMons[i];
        }
    }

    BattleFactory_SelectInitialOpponentMons(BattleFactory_GetOpponentPartySize(factory->challengeType, TRUE), factory->trainerIDs[factory->currentBattle], factory->isOpenLevel, usedMons, factory->opponentMonSetIDs, factory->opponentMons, factory->opponentMonIVs, factory->opponentMonPersonalities, numPokemonUsed);

    for (i = 0; i < FACTORY_INITIAL_RENTAL_OPTIONS; i++) {
        Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);
        FrontierPokemon_InitPokemon(&factory->initialRentalMons[i], mon, BattleFactory_GetPokemonLevel(factory));
        BattleFactory_AddRentalPokemonToParty(factory->saveData, factory->playersParty, mon);
        Heap_Free(mon);
    }

    for (i = 0; i < FACTORY_INITIAL_RENTAL_OPTIONS; i++) {
        Party_GetPokemonBySlotIndex(factory->playersParty, i);
    }
}

static void SwapMonIndices(BattleFactory *factory, u8 idx1, u8 isPartners)
{
    u16 setID;
    u8 ivs;
    u32 personality;

    u16 idx2 = LCRNG_Next() % FACTORY_INITIAL_RENTAL_OPTIONS;

    if (!isPartners) {
        setID = factory->initialRentalSetIDs[idx1];
        ivs = factory->initialRentalIVs[idx1];
        personality = factory->initialRentalPersonalities[idx1];
        FrontierPokemon mon = factory->initialRentalMons[idx1];

        factory->initialRentalSetIDs[idx1] = factory->initialRentalSetIDs[idx2];
        factory->initialRentalIVs[idx1] = factory->initialRentalIVs[idx2];
        factory->initialRentalPersonalities[idx1] = factory->initialRentalPersonalities[idx2];
        factory->initialRentalMons[idx1] = factory->initialRentalMons[idx2];

        factory->initialRentalSetIDs[idx2] = setID;
        factory->initialRentalIVs[idx2] = ivs;
        factory->initialRentalPersonalities[idx2] = personality;
        factory->initialRentalMons[idx2] = mon;
    } else {
        setID = factory->partnerRentalSetIDs[idx1];
        ivs = factory->partnerRentalIVs[idx1];
        personality = factory->partnerRentalPersonalities[idx1];
        FrontierPokemon mon = factory->partnerRentalMons[idx1];

        factory->partnerRentalSetIDs[idx1] = factory->partnerRentalSetIDs[idx2];
        factory->partnerRentalIVs[idx1] = factory->partnerRentalIVs[idx2];
        factory->partnerRentalPersonalities[idx1] = factory->partnerRentalPersonalities[idx2];
        factory->partnerRentalMons[idx1] = factory->partnerRentalMons[idx2];

        factory->partnerRentalSetIDs[idx2] = setID;
        factory->partnerRentalIVs[idx2] = ivs;
        factory->partnerRentalPersonalities[idx2] = personality;
        factory->partnerRentalMons[idx2] = mon;
    }
}

static void LoadTrainersAndMonsFromSave(BattleFactory *factory)
{
    FrontierPokemon mons[MAX_PARTY_SIZE];
    u8 ivs[MAX_PARTY_SIZE];
    u16 monSetIDs[MAX_PARTY_SIZE];
    u32 personalities[MAX_PARTY_SIZE];

    UNUSED(BattleFactory_GetPlayerPartySize(factory->challengeType));

    for (int i = 0; i < FACTORY_BATTLES_PER_ROUND * 2; i++) {
        factory->trainerIDs[i] = BattleFactorySave_GetMember(factory->factorySave, FACTORY_SAVE_TRAINER_IDS, i, NULL);
    }

    for (int i = 0; i < FACTORY_MAX_PARTY_SIZE; i++) {
        monSetIDs[i] = BattleFactorySave_GetMember(factory->factorySave, FACTORY_SAVE_PLAYER_SETS, i, NULL);
        personalities[i] = BattleFactorySave_GetMember(factory->factorySave, FACTORY_SAVE_PLAYER_PERSONALITY, i, NULL);
        ivs[i] = BattleFactorySave_GetMember(factory->factorySave, FACTORY_SAVE_PLAYER_IVS, i, NULL);

        factory->playerMonSetIDs[i] = monSetIDs[i];
    }

    BattleFrontier_LoadFrontierPokemon(mons, monSetIDs, ivs, personalities, NULL, FACTORY_MAX_PARTY_SIZE, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (int i = 0; i < FACTORY_MAX_PARTY_SIZE; i++) {
        FrontierPokemon_InitPokemon(&mons[i], mon, BattleFactory_GetPokemonLevel(factory));
        BattleFactory_AddRentalPokemonToParty(factory->saveData, factory->playersParty, mon);
    }

    Heap_Free(mon);

    for (int i = 0; i < FACTORY_MAX_PARTY_SIZE; i++) {
        monSetIDs[i] = BattleFactorySave_GetMember(factory->factorySave, FACTORY_SAVE_OPPONENT_SETS, i, NULL);
        personalities[i] = BattleFactorySave_GetMember(factory->factorySave, FACTORY_SAVE_OPPONENT_PERSONALITY, i, NULL);
        ivs[i] = BattleFactorySave_GetMember(factory->factorySave, FACTORY_SAVE_OPPONENT_IVS, i, NULL);

        factory->opponentMonSetIDs[i] = monSetIDs[i];
    }

    BattleFrontier_LoadFrontierPokemon(mons, monSetIDs, ivs, personalities, NULL, FACTORY_MAX_PARTY_SIZE, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    mon = Pokemon_New(HEAP_ID_FIELD2);

    for (int i = 0; i < FACTORY_MAX_PARTY_SIZE; i++) {
        FrontierPokemon_InitPokemon(&mons[i], mon, BattleFactory_GetPokemonLevel(factory));
        BattleFactory_AddRentalPokemonToParty(factory->saveData, factory->opponentsParty, mon);
    }

    Heap_Free(mon);
}

void BattleFactory_Free(BattleFactory *factory)
{
    if (factory == NULL) {
        return;
    }

    if (factory->playersParty != NULL) {
        Heap_Free(factory->playersParty);
    }

    if (factory->opponentsParty != NULL) {
        Heap_Free(factory->opponentsParty);
    }

    MI_CpuClear8(factory, sizeof(BattleFactory));

    Heap_Free(factory);
    factory = NULL;
}

void BattleFactory_GetMonSelectionAppResult(BattleFactory *battleFactory, BattleFactoryAppArgs *args)
{
    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        battleFactory->selectedAppSlots[i] = GetBattleFactoryAppSelectedIndices(args, i);
    }
}

static u16 GetBattleFactoryAppSelectedIndices(BattleFactoryAppArgs *args, u8 i)
{
    if (i >= 6) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return args->selectedIndices[i];
}

void BattleFactory_Save(BattleFactory *factory, u8 saveType)
{
    u8 u8Ptr[4];
    u16 u16Ptr[4];
    u32 u32Ptr[4];
    BattleFactorySave *factorySave = factory->factorySave;
    BattleFactoryStreakFlags *streakFlags = BattleFactoryStreakFlags_Get(factory->saveData);

    BattleFrontierSave *frontier = SaveData_GetBattleFrontier(factory->saveData);
    UNUSED(BattleFactory_GetPlayerPartySize(factory->challengeType));
    UNUSED(BattleFactory_GetOpponentPartySize(factory->challengeType, TRUE));

    u8Ptr[0] = factory->isOpenLevel;
    BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_OPEN_LEVEL, 0, u8Ptr);

    u8Ptr[0] = factory->challengeType;
    BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_CHALLENGE_TYPE, 0, u8Ptr);
    BattleFactorySave_RecordSave(factory->factorySave, TRUE);

    u8Ptr[0] = factory->currentBattle;
    BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_CURRENT_BATTLE, 0, u8Ptr);
    BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetFactoryLatestTradeCountIndex(factory->isOpenLevel, factory->challengeType), factory->tradeCount);
    BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetFactoryLatestStreakIdx(factory->isOpenLevel, factory->challengeType), factory->currentStreak);

    if (saveType != 2) {
        u16 recordStreak = BattleFrontierSave_GetStatAutoHostIdx(frontier, BattleFrontierStats_GetFactoryRecordStreakIdx(factory->isOpenLevel, factory->challengeType));
        u32 newRecord = BattleFrontierSave_SetIfBetterAutoHostIdx(frontier, BattleFrontierStats_GetFactoryRecordStreakIdx(factory->isOpenLevel, factory->challengeType), factory->currentStreak);
        u16 latestStreak = BattleFrontierSave_GetStatAutoHostIdx(frontier, BattleFrontierStats_GetFactoryRecordStreakIdx(factory->isOpenLevel, factory->challengeType));

        if (factory->currentStreak == recordStreak) {
            BattleFrontierSave_SetIfBetterAutoHostIdx(frontier, BattleFrontierStats_GetFactoryRecordTradeCountIndex(factory->isOpenLevel, factory->challengeType), factory->tradeCount);
        } else if (recordStreak < latestStreak) {
            BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetFactoryRecordTradeCountIndex(factory->isOpenLevel, factory->challengeType), factory->tradeCount);
        }

        u8Ptr[0] = factory->saveStreak;
        BattleFactoryStreakFlags_SetFlag(streakFlags, FACTORY_SAVE_STREAK_FLAGS, (factory->isOpenLevel * 4) + factory->challengeType, u8Ptr);

        if (factory->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            u32 statIndex = !factory->isOpenLevel ? STAT_FACTORY_50_WFC_STREAK_ACTIVE : STAT_FACTORY_OPEN_WFC_STREAK_ACTIVE;
            BattleFrontierSave_SetStatAutoHostIdx(frontier, statIndex, factory->saveStreak);
        }
    }

    for (u16 i = 0; i < FACTORY_BATTLES_PER_ROUND * 2; i++) {
        u16Ptr[0] = factory->trainerIDs[i];
        BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_TRAINER_IDS, i, u16Ptr);
    }

    u32 partySize = Party_GetCurrentCount(factory->playersParty);

    for (u16 i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(factory->playersParty, i);

        u16Ptr[0] = factory->playerMonSetIDs[i];
        BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_PLAYER_SETS, i, u16Ptr);

        u8Ptr[0] = Pokemon_GetValue(mon, MON_DATA_ATK_IV, NULL);
        BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_PLAYER_IVS, i, u8Ptr);

        u32Ptr[0] = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
        BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_PLAYER_PERSONALITY, i, u32Ptr);
    }

    partySize = Party_GetCurrentCount(factory->opponentsParty);

    for (u16 i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(factory->opponentsParty, i);

        u16Ptr[0] = factory->opponentMonSetIDs[i];
        BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_OPPONENT_SETS, i, u16Ptr);

        u8Ptr[0] = Pokemon_GetValue(mon, MON_DATA_ATK_IV, NULL);
        BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_OPPONENT_IVS, i, u8Ptr);

        u32Ptr[0] = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
        BattleFactorySave_SetMember(factory->factorySave, FACTORY_SAVE_OPPONENT_PERSONALITY, i, u32Ptr);
    }
}

u16 BattleFactory_IncrementCurrentBattle(BattleFactory *factory)
{
    factory->currentBattle++;
    return factory->currentBattle;
}

u16 BattleFactory_GetCurrentBattle(BattleFactory *factory)
{
    return factory->currentBattle;
}

u16 BattleFactory_GetNextOpponentObjectID(BattleFactory *factory, u8 trainerSlot)
{
    FrontierTrainer trainer;
    u8 offset = factory->currentBattle + (trainerSlot * FACTORY_BATTLES_PER_ROUND);

    Heap_Free(BattleFrontier_GetTrainer(&trainer, factory->trainerIDs[offset], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return BattleFrontier_GetObjectIDFromTrainerClass(trainer.trainerType);
}

void BattleFactory_SaveOnLoss(BattleFactory *factory)
{
    BattleFactory_Save(factory, 1);
}

void BattleFactory_SaveOnCompletingRound(BattleFactory *factory)
{
    factory->saveStreak = TRUE;

    if (factory->currentRound < FACTORY_MAX_DISTINCT_ROUNDS) {
        factory->currentRound++;
    }

    factory->currentBattle = 0;
    BattleFactory_Save(factory, 0);
}

void BattleFactory_AddSelectedRentalsToParty(BattleFactory *factory)
{
    u8 playerPartySize = BattleFactory_GetPlayerPartySize(factory->challengeType);
    u8 opponentPartySize = BattleFactory_GetOpponentPartySize(factory->challengeType, TRUE);

    Party_Init(factory->playersParty);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (int i = 0; i < playerPartySize; i++) {
        FrontierPokemon_InitPokemon(&factory->initialRentalMons[factory->selectedAppSlots[i]], mon, BattleFactory_GetPokemonLevel(factory));
        BattleFactory_AddRentalPokemonToParty(factory->saveData, factory->playersParty, mon);
        factory->playerMonSetIDs[i] = factory->initialRentalSetIDs[factory->selectedAppSlots[i]];
    }

    for (int i = 0; i < opponentPartySize; i++) {
        FrontierPokemon_InitPokemon(&factory->opponentMons[i], mon, BattleFactory_GetPokemonLevel(factory));
        BattleFactory_AddRentalPokemonToParty(factory->saveData, factory->opponentsParty, mon);
    }

    Heap_Free(mon);
}

void BattleFactory_SetupNextOpponent(BattleFactory *factory)
{
    int i, partySize, playersPartySize;
    u16 usedSpecies[FACTORY_MAX_PARTY_SIZE * 2];
    u16 usedItems[FACTORY_MAX_PARTY_SIZE * 2];

    for (i = 0; i < FACTORY_MAX_PARTY_SIZE * 2; i++) {
        usedSpecies[i] = 0;
        usedItems[i] = 0;
    }

    u8 opponentPartySize = BattleFactory_GetOpponentPartySize(factory->challengeType, TRUE);
    partySize = Party_GetCurrentCount(factory->playersParty);

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(factory->playersParty, i);
        usedSpecies[i] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        usedItems[i] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    }

    playersPartySize = partySize;
    partySize = Party_GetCurrentCount(factory->opponentsParty);

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(factory->opponentsParty, i);
        usedSpecies[i + playersPartySize] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        usedItems[i + playersPartySize] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        factory->initialRentalSetIDs[i] = factory->opponentMonSetIDs[i];
    }

    const BattleFactoryPokemonPool *pool = BattleFactory_GetPokemonPoolForTrainer(factory->trainerIDs[factory->currentBattle], factory->isOpenLevel);

    BattleFactory_SelectPokemonFromPool(usedSpecies, usedItems, playersPartySize + partySize, opponentPartySize, factory->opponentMonSetIDs, HEAP_ID_FIELD2, pool, 0, factory->opponentMonIVs);
    BattleFrontier_LoadFrontierPokemon(factory->opponentMons, factory->opponentMonSetIDs, factory->opponentMonIVs, NULL, factory->opponentMonPersonalities, opponentPartySize, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
}

void BattleFactory_ApplyTrade(BattleFactory *factory)
{
    if (factory->selectedAppSlots[0] != 0xff) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(factory->opponentsParty, factory->selectedAppSlots[1]);
        Party_AddPokemonBySlotIndex(factory->playersParty, factory->selectedAppSlots[0], mon);

        factory->playerMonSetIDs[factory->selectedAppSlots[0]] = factory->initialRentalSetIDs[factory->selectedAppSlots[1]];

        BattleFactory_IncrementTradeCount(factory);
        GameRecords_IncrementRecordValue(SaveData_GetGameRecords(factory->saveData), RECORD_BATTLE_FACTORY_TRADES);
    }
}

void BattleFactory_SetupNextOpponentsParty(BattleFactory *factory)
{
    UNUSED(BattleFactory_GetPlayerPartySize(factory->challengeType));
    u8 partySize = BattleFactory_GetOpponentPartySize(factory->challengeType, TRUE);

    Party_Init(factory->opponentsParty);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (int i = 0; i < partySize; i++) {
        FrontierPokemon_InitPokemon(&factory->opponentMons[i], mon, BattleFactory_GetPokemonLevel(factory));
        BattleFactory_AddRentalPokemonToParty(factory->saveData, factory->opponentsParty, mon);
    }

    Heap_Free(mon);

    for (int i = 0; i < partySize; i++) {
        UNUSED(Party_GetPokemonBySlotIndex(factory->opponentsParty, i));
    }
}

void BattleFactory_IncrementTradeCount(BattleFactory *factory)
{
    if (factory->tradeCount < 9999) {
        factory->tradeCount++;
    }
}

BOOL BattleFactory_SendCommMessage(BattleFactory *factory, u16 command, u16 arg)
{
    int success;

    switch (command) {
    case 0:
        success = ov104_0222EEF8(factory);
        break;
    case 1:
        success = FactoryCommunication_SendTrainers(factory);
        break;
    case 2:
        success = ov104_0222EFCC(factory);
        break;
    case 3:
        success = ov104_0222F0B4(factory);
        break;
    case 4:
        success = ov104_0222F1A0(factory, arg);
        break;
    case 5:
        success = ov104_0222F1EC(factory, arg);
        break;
    case 6:
        success = ov104_0222F238(factory);
        break;
    }

    return success;
}

u16 BattleFactory_GetEarnedBP(BattleFactory *factory)
{
    u8 bp;
    static const u8 sBPPerRoundSolo[FACTORY_MAX_DISTINCT_ROUNDS + 1] = { 0, 5, 5, 5, 5, 7, 7, 8, 9 };
    static const u8 sBPPerRoundWifi[FACTORY_MAX_DISTINCT_ROUNDS + 1] = { 0, 10, 11, 12, 13, 16, 17, 19, 21 };

    u16 currentRound = factory->currentRound;

    if (factory->challengeType == FRONTIER_CHALLENGE_SINGLE || factory->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        if (currentRound >= FACTORY_MAX_DISTINCT_ROUNDS) {
            bp = sBPPerRoundSolo[FACTORY_MAX_DISTINCT_ROUNDS];
        } else {
            bp = sBPPerRoundSolo[currentRound];
        }
    } else {
        if (currentRound >= FACTORY_MAX_DISTINCT_ROUNDS) {
            bp = sBPPerRoundWifi[FACTORY_MAX_DISTINCT_ROUNDS];
        } else {
            bp = sBPPerRoundWifi[currentRound];
        }
    }

    if (factory->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (factory->currentStreak == FACTORY_STREAK_SILVER_BATTLE || factory->currentStreak == FACTORY_STREAK_GOLD_BATTLE) {
            bp = 20;
        }
    }

    return bp;
}
