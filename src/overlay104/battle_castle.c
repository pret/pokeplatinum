#include "overlay104/battle_castle.h"

#include <nitro.h>

#include "constants/heap.h"
#include "constants/moves.h"
#include "generated/game_records.h"

#include "struct_defs/battle_frontier.h"

#include "applications/frontier/battle_castle/args.h"
#include "global/utility.h"
#include "overlay104/battle_castle_helpers.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_opponents.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/ov104_0222ECE8.h"

#include "battle_castle_save.h"
#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "game_records.h"
#include "heap.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "string_template.h"
#include "system_vars.h"
#include "text.h"
#include "trainer_info.h"
#include "vars_flags.h"

#include "res/text/bank/battle_castle_self_app.h"

static void SelectTrainersAndFirstBattlesMons(BattleCastle *castle);
static void LoadTrainersAndMonsFromSave(BattleCastle *castle);
static void LoadPlayersPartyFromSave(BattleCastle *castle);
static u16 GetBattleCastleAppSelectedSlot(BattleCastleAppArgs *args, u8 i);
static void DrawPlayerInfoWindow(BgConfig *bgConfig, Window *window);
static void PrintPlayerNameandCP(FrontierScriptManager *scriptMan, Window *window, TrainerInfo *trainer, u16 castlePoints);

BattleCastle *BattleCastle_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u16 partySlot1, u16 partySlot2, u16 partySlot3, u16 *param6)
{
    static BattleCastle *castle;
    castle = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleCastle));

    MI_CpuClear8(castle, sizeof(BattleCastle));

    castle->castleSave = BattleCastleSave_Get(saveData);
    castle->saveData = saveData;
    castle->unused = 11;
    castle->playersParty = Party_New(HEAP_ID_FIELD2);
    castle->opponentsParty = Party_New(HEAP_ID_FIELD2);
    castle->unk_A20 = param6;

    BattleCastleSave *castleSave = castle->castleSave;
    BattleCastlePersistentSave *persistentSave = BattleCastlePersistentSave_Get(saveData);

    if (!resumingFromSave) {
        castle->challengeType = challengeType;
        castle->currentBattle = 0;

        BattleCastleSave_Init(castleSave);

        u8 streakActive;
        if (castle->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            streakActive = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(castle->saveData));
        } else {
            streakActive = BattleCastlePersistentSave_GetFlag(persistentSave, CASTLE_SAVE_STREAK_FLAGS, castle->challengeType, 0, NULL);
        }

        if (streakActive == TRUE) {
            castle->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleLatestStreakIndex(castle->challengeType));
        } else {
            castle->currentStreak = 0;

            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleLatestCPIndex(castle->challengeType), 0);
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleSpentCPIndex(challengeType), 0);

            for (u16 rank = 0; rank < BATTLE_CASTLE_NUM_RANK_TYPES; rank++) {
                BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleRankIndex(castle->challengeType, rank), 1);
            }
        }

        castle->currentRound = castle->currentStreak / CASTLE_BATTLES_PER_ROUND;
        castle->unused2 = 0;
        castle->partySlots[0] = partySlot1;
        castle->partySlots[1] = partySlot2;
        castle->partySlots[2] = partySlot3;
        castle->initialCP = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleLatestCPIndex(castle->challengeType));

        BattleFrontierSave_AddToStat(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleLatestCPIndex(castle->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(castle->challengeType)), 10);
    } else {
        castle->challengeType = BattleCastleSave_GetMember(castleSave, CASTLE_SAVE_CHALLENGE_TYPE, 0, 0, NULL);
        castle->currentBattle = BattleCastleSave_GetMember(castleSave, CASTLE_SAVE_CURRENT_BATTLE, 0, 0, NULL);
        castle->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleLatestStreakIndex(castle->challengeType));
        castle->currentRound = castle->currentStreak / CASTLE_BATTLES_PER_ROUND;

        for (u16 i = 0; i < CASTLE_PARTY_SIZE_SOLO; i++) {
            castle->partySlots[i] = BattleCastleSave_GetMember(castleSave, CASTLE_SAVE_PARTY_SLOTS, i, 0, NULL);
        }
    }

    for (u16 i = 0; i < CASTLE_PARTY_SIZE_SOLO; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(castle->saveData), castle->partySlots[i]);
        castle->savedHeldItems[i] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    }

    Party *fieldParty = SaveData_GetParty(castle->saveData);
    u8 partySize = BattleCastle_GetPlayerPartySize(castle->challengeType, 0);

    for (u16 i = 0; i < partySize; i++) {
        Party_AddPokemon(castle->playersParty, Party_GetPokemonBySlotIndex(fieldParty, castle->partySlots[i]));

        Pokemon *mon = Party_GetPokemonBySlotIndex(castle->playersParty, i);

        u32 noItem = ITEM_NONE;
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &noItem);

        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) > CASTLE_MAX_LEVEL) {
            u32 exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), CASTLE_MAX_LEVEL);
            Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
            Pokemon_CalcLevelAndStats(mon);
        }
    }

    if (BattleCastle_IsMultiPlayerChallenge(castle->challengeType) == TRUE) {
        BattleFrontier_FlagGeonetLinkInfo(castle->saveData);
    }

    return castle;
}

void BattleCastle_LoadTrainersForRound(BattleCastle *castle, u16 resumingFromSave)
{
    if (!resumingFromSave) {
        SelectTrainersAndFirstBattlesMons(castle);
    } else {
        LoadTrainersAndMonsFromSave(castle);
    }
}

static void SelectTrainersAndFirstBattlesMons(BattleCastle *castle)
{
    u8 partySize = Party_GetCurrentCount(castle->playersParty);

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(castle->playersParty, i);

        castle->startingPP[i][0] = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP, NULL);
        castle->startingPP[i][1] = Pokemon_GetValue(mon, MON_DATA_MOVE2_PP, NULL);
        castle->startingPP[i][2] = Pokemon_GetValue(mon, MON_DATA_MOVE3_PP, NULL);
        castle->startingPP[i][3] = Pokemon_GetValue(mon, MON_DATA_MOVE4_PP, NULL);
    }

    BattleCastle_PickOpponentTrainers(castle->challengeType, BattleCastle_GetCurrentRound(castle), castle->trainerIDs, CASTLE_BATTLES_PER_ROUND * 2);

    BattleFrontier_GetPokemonForTrainers(BattleCastle_GetOpponentPartySize(castle->challengeType, TRUE), castle->trainerIDs[castle->currentBattle], castle->trainerIDs[castle->currentBattle + CASTLE_BATTLES_PER_ROUND], castle->monSetIDs, castle->opponentMons, castle->opponentMonIVs, castle->opponentMonPersonalities, BattleCastle_IsMultiPlayerChallenge(castle->challengeType));
}

static void LoadTrainersAndMonsFromSave(BattleCastle *castle)
{
    FrontierPokemon mons[MAX_PARTY_SIZE];
    u8 ivs[MAX_PARTY_SIZE];
    u16 setIDs[MAX_PARTY_SIZE];
    u32 personalities[MAX_PARTY_SIZE];

    LoadPlayersPartyFromSave(castle);

    for (int i = 0; i < CASTLE_BATTLES_PER_ROUND * 2; i++) {
        castle->trainerIDs[i] = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_TRAINER_IDS, i, 0, NULL);
    }

    for (int i = 0; i < CASTLE_PARTY_SIZE_MULTI * 2; i++) {
        setIDs[i] = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_MON_SET_IDS, i, 0, NULL);
        castle->monSetIDs[i] = setIDs[i];
    }

    BattleFrontier_LoadFrontierPokemon(mons, setIDs, ivs, NULL, personalities, 4, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);
    for (int i = 0; i < CASTLE_PARTY_SIZE_MULTI * 2; i++) {
        FrontierPokemon_InitPokemon(&mons[i], mon, BattleCastle_GetOpponentLevel(castle));
        BattleCastle_AddMonToParty(castle, castle->opponentsParty, mon);
    }

    Heap_Free(mon);
}

static void LoadPlayersPartyFromSave(BattleCastle *castle)
{
    u32 u32Ptr;
    u16 u16Ptr;
    u8 u8Ptr;

    u8 partySize = Party_GetCurrentCount(castle->playersParty);

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(castle->playersParty, i);

        u16Ptr = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_MON_HP, i, 0, NULL);
        Pokemon_SetValue(mon, MON_DATA_HP, &u16Ptr);

        u8Ptr = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_MON_PP, i, 0, NULL);
        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP, &u8Ptr);

        u8Ptr = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_MON_PP, i, 1, NULL);
        Pokemon_SetValue(mon, MON_DATA_MOVE2_PP, &u8Ptr);

        u8Ptr = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_MON_PP, i, 2, NULL);
        Pokemon_SetValue(mon, MON_DATA_MOVE3_PP, &u8Ptr);

        u8Ptr = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_MON_PP, i, 3, NULL);
        Pokemon_SetValue(mon, MON_DATA_MOVE4_PP, &u8Ptr);

        u32Ptr = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_MON_STATUS, i, 0, NULL);
        Pokemon_SetValue(mon, MON_DATA_STATUS, &u32Ptr);

        u16Ptr = BattleCastleSave_GetMember(castle->castleSave, CASTLE_SAVE_HELD_ITEMS, i, 0, NULL);
        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &u16Ptr);
    }
}

void BattleCastle_Free(BattleCastle *castle)
{
    if (castle == NULL) {
        return;
    }

    if (castle->playersParty != NULL) {
        Heap_Free(castle->playersParty);
    }

    if (castle->opponentsParty != NULL) {
        Heap_Free(castle->opponentsParty);
    }

    MI_CpuClear8(castle, sizeof(BattleCastle));
    Heap_Free(castle);

    castle = NULL;
}

void BattleCastle_StoreAppResults(BattleCastle *battleCastle, BattleCastleAppArgs *args)
{
    for (int i = 0; i < 6; i++) {
        battleCastle->selectedAppSlots[i] = GetBattleCastleAppSelectedSlot(args, i);
    }

    for (int i = 0; i < CASTLE_PARTY_SIZE_MULTI * 2; i++) {
        battleCastle->appIdentityUnlocked[i] = args->identityUnlocked[i];
        battleCastle->levelAdjustments[i] = args->levelAdjustments[i];
        battleCastle->appStatsUnlocked[i] = args->statsUnlocked[i];
        battleCastle->appMovesUnlocked[i] = args->movesUnlocked[i];
    }

    battleCastle->partnersCP = args->partnersCP;
}

static u16 GetBattleCastleAppSelectedSlot(BattleCastleAppArgs *args, u8 i)
{
    if (i >= MAX_PARTY_SIZE) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return args->selectedMonSlot;
}

void BattleCastle_Save(BattleCastle *castle, u8 saveType)
{
    u8 u8Ptr[4];
    u16 u16Ptr[4];
    u32 u32Ptr[4];
    u32 partySize;
    BattleCastleSave *castleSave = castle->castleSave;
    BattleCastlePersistentSave *persistentSave = BattleCastlePersistentSave_Get(castle->saveData);

    BattleFrontierSave *frontier = SaveData_GetBattleFrontier(castle->saveData);
    UNUSED(BattleCastle_GetOpponentPartySize(castle->challengeType, TRUE));

    *u8Ptr = castle->challengeType;
    BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_CHALLENGE_TYPE, 0, 0, u8Ptr);
    BattleCastleSave_RecordSave(castle->castleSave, TRUE);

    *u8Ptr = castle->currentBattle;

    BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_CURRENT_BATTLE, 0, 0, u8Ptr);
    BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleLatestStreakIndex(castle->challengeType), castle->currentStreak);

    if (saveType != 2) {
        u16 recordStreak = BattleFrontierSave_GetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleRecordStreakIndex(castle->challengeType));
        BattleFrontierSave_SetIfBetterAutoHostIdx(frontier, BattleFrontierStats_GetCastleRecordStreakIndex(castle->challengeType), castle->currentStreak);
        u16 newRecord = BattleFrontierSave_GetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleRecordStreakIndex(castle->challengeType));
        u32 latestStreak = BattleFrontierSave_GetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleLatestCPIndex(castle->challengeType));

        if (castle->currentStreak == recordStreak) {
            BattleFrontierSave_SetIfBetterAutoHostIdx(frontier, BattleFrontierStats_GetCastleRecordCPIndex(castle->challengeType), latestStreak);
        } else if (recordStreak < newRecord) {
            BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleRecordCPIndex(castle->challengeType), latestStreak);
        }

        *u8Ptr = castle->saveStreak;
        BattleCastlePersistentSave_SetFlag(persistentSave, CASTLE_SAVE_STREAK_FLAGS, castle->challengeType, 0, u8Ptr);

        if (castle->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            BattleFrontierSave_SetStatAutoHostIdx(frontier, STAT_CASTLE_WFC_STREAK_ACTIVE, castle->saveStreak);
        }
    }

    for (u16 i = 0; i < CASTLE_BATTLES_PER_ROUND * 2; i++) {
        *u16Ptr = castle->trainerIDs[i];
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_TRAINER_IDS, i, 0, u16Ptr);
    }

    for (u16 i = 0; i < CASTLE_PARTY_SIZE_SOLO; i++) {
        *u8Ptr = castle->partySlots[i];
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_PARTY_SLOTS, i, 0, u8Ptr);
    }

    partySize = Party_GetCurrentCount(castle->playersParty);

    for (u16 i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(castle->playersParty, i);

        *u16Ptr = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_MON_HP, i, 0, u16Ptr);

        *u8Ptr = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP, NULL);
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_MON_PP, i, 0, u8Ptr);

        *u8Ptr = Pokemon_GetValue(mon, MON_DATA_MOVE2_PP, NULL);
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_MON_PP, i, 1, u8Ptr);

        *u8Ptr = Pokemon_GetValue(mon, MON_DATA_MOVE3_PP, NULL);
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_MON_PP, i, 2, u8Ptr);

        *u8Ptr = Pokemon_GetValue(mon, MON_DATA_MOVE4_PP, NULL);
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_MON_PP, i, 3, u8Ptr);

        *u32Ptr = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_MON_STATUS, i, 0, u32Ptr);

        *u16Ptr = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_HELD_ITEMS, i, 0, u16Ptr);
    }

    partySize = Party_GetCurrentCount(castle->opponentsParty);

    for (u16 i = 0; i < partySize; i++) {
        UNUSED(Party_GetPokemonBySlotIndex(castle->opponentsParty, i));
        *u16Ptr = castle->monSetIDs[i];

        BattleCastleSave_SetMember(castle->castleSave, CASTLE_SAVE_MON_SET_IDS, i, 0, u16Ptr);
    }
}

u16 BattleCastle_IncrementCurrentBattle(BattleCastle *castle)
{
    castle->currentBattle++;
    return castle->currentBattle;
}

u16 BattleCastle_GetCurrentBattle(BattleCastle *castle)
{
    return castle->currentBattle;
}

u16 BattleCastle_GetNextOpponentObjectID(BattleCastle *castle, u8 trainerSlot)
{
    FrontierTrainer trainer;
    u8 offset = castle->currentBattle + (trainerSlot * CASTLE_BATTLES_PER_ROUND);

    Heap_Free(BattleFrontier_GetTrainer(&trainer, castle->trainerIDs[offset], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return BattleFrontier_GetObjectIDFromTrainerClass(trainer.trainerType);
}

void BattleCastle_SaveOnLoss(BattleCastle *castle)
{
    for (int i = 0; i < BATTLE_CASTLE_NUM_RANK_TYPES; i++) {
        BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleRankIndex(castle->challengeType, i), 1);
    }

    BattleCastle_Save(castle, 1);
}

void BattleCastle_SaveOnCompletingRound(BattleCastle *castle)
{
    castle->saveStreak = TRUE;

    if (castle->currentRound < CASTLE_MAX_DISTINCT_ROUNDS) {
        castle->currentRound++;
    }

    castle->currentBattle = 0;
    BattleCastle_Save(castle, 0);
}

void BattleCastle_SetupFirstOpponentsParty(BattleCastle *castle)
{
    BattleCastle_SetupOpponentsParty(castle);
}

void BattleCastle_SetupNextOpponentsParty(BattleCastle *castle)
{
    BattleFrontier_GetPokemonForTrainers(BattleCastle_GetOpponentPartySize(castle->challengeType, TRUE), castle->trainerIDs[castle->currentBattle], castle->trainerIDs[castle->currentBattle + CASTLE_BATTLES_PER_ROUND], castle->monSetIDs, castle->opponentMons, castle->opponentMonIVs, castle->opponentMonPersonalities, BattleCastle_IsMultiPlayerChallenge(castle->challengeType));

    BattleCastle_SetupOpponentsParty(castle);
}

void BattleCastle_PrepForNextBattle(BattleCastle *castle)
{
    u8 partyOffset, playerPartySize;

    if (CommSys_CurNetId() == 0) {
        partyOffset = 0;
    } else {
        partyOffset = CASTLE_PARTY_SIZE_MULTI;
    }

    playerPartySize = BattleCastle_GetPlayerPartySize(castle->challengeType, FALSE);
    UNUSED(Party_GetCurrentCount(castle->playersParty));

    for (int i = partyOffset; i < (playerPartySize + partyOffset); i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(castle->playersParty, i);

        castle->startingPP[i - partyOffset][0] = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP, NULL);
        castle->startingPP[i - partyOffset][1] = Pokemon_GetValue(mon, MON_DATA_MOVE2_PP, NULL);
        castle->startingPP[i - partyOffset][2] = Pokemon_GetValue(mon, MON_DATA_MOVE3_PP, NULL);
        castle->startingPP[i - partyOffset][3] = Pokemon_GetValue(mon, MON_DATA_MOVE4_PP, NULL);
    }

    BattleCastle_RevivePokemon(castle->playersParty);

    for (int i = 0; i < CASTLE_PARTY_SIZE_MULTI * 2; i++) {
        castle->appIdentityUnlocked[i] = FALSE;
        castle->levelAdjustments[i] = LEVEL_ADJUSTMENT_NONE;
        castle->appStatsUnlocked[i] = FALSE;
        castle->appMovesUnlocked[i] = FALSE;
    }
}

int BattleCastle_CalcCPEarnedFromBattle(BattleCastle *castle)
{
    int i, j;
    u8 cpFactors[20];
    int earnedCP = 0;

    for (i = 0; i < 20; i++) {
        cpFactors[i] = 0;
    }

    castle->monFainted = FALSE;
    int remainingPP = 0;

    u8 partyOffset;
    if (CommSys_CurNetId() == 0) {
        partyOffset = 0;
    } else {
        partyOffset = CASTLE_PARTY_SIZE_MULTI;
    }

    u8 playerPartySize = BattleCastle_GetPlayerPartySize(castle->challengeType, FALSE);
    u8 opponentPartySize = BattleCastle_GetOpponentPartySize(castle->challengeType, TRUE);

    for (i = partyOffset; i < playerPartySize + partyOffset; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(castle->playersParty, i);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }

        u32 currentHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        u32 maxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);

        if (currentHP > 0) {
            cpFactors[0]++;

            if (currentHP == maxHP) {
                cpFactors[1]++;
            } else {
                if (currentHP >= maxHP / 2) {
                    cpFactors[2]++;
                } else {
                    cpFactors[3]++;
                }
            }

            if (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) == 0) {
                cpFactors[4]++;
            }
        } else {
            castle->monFainted = TRUE;
        }

        remainingPP += Pokemon_GetValue(mon, MON_DATA_MOVE1_PP, NULL);
        remainingPP += Pokemon_GetValue(mon, MON_DATA_MOVE2_PP, NULL);
        remainingPP += Pokemon_GetValue(mon, MON_DATA_MOVE3_PP, NULL);
        remainingPP += Pokemon_GetValue(mon, MON_DATA_MOVE4_PP, NULL);
    }

    for (i = 0; i < opponentPartySize; i++) {
        if (castle->levelAdjustments[i] == LEVEL_ADJUSTMENT_UP_5) {
            cpFactors[8]++;
        }
    }

    int startingPP = 0;

    for (i = 0; i < playerPartySize; i++) {
        for (j = 0; j < LEARNED_MOVES_MAX; j++) {
            startingPP += castle->startingPP[i][j];
        }
    }

    if (startingPP - remainingPP <= 5) {
        cpFactors[5]++;
    } else if (startingPP - remainingPP <= 10) {
        cpFactors[6]++;
    } else if (startingPP - remainingPP <= 15) {
        cpFactors[7]++;
    }

    earnedCP += cpFactors[0] * 3;
    earnedCP += cpFactors[1] * 3;
    earnedCP += cpFactors[2] * 2;
    earnedCP += cpFactors[3] * 1;
    earnedCP += cpFactors[4] * 1;
    earnedCP += cpFactors[5] * 8;
    earnedCP += cpFactors[6] * 6;
    earnedCP += cpFactors[7] * 4;
    earnedCP += cpFactors[8] * 7;

    if (earnedCP <= 0) {
        earnedCP = 1;
    }

    return earnedCP;
}

void BattleCastle_ReceiveCastlePoints(SaveData *saveData, u8 challengeType, int newCP)
{
    u16 currentCP = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleLatestCPIndex(challengeType));

    if (currentCP + newCP > 9999) {
        BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleLatestCPIndex(challengeType), 9999);
    } else {
        BattleFrontierSave_AddToStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleLatestCPIndex(challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(challengeType)), newCP);
    }

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(saveData), RECORD_CASTLE_POINTS_RECEIVED, newCP);
}

BOOL BattleCastle_SendCommMessage(BattleCastle *castle, u16 command, u16 arg)
{
    int success;

    switch (command) {
    case 0:
        success = ov104_0222F3B8(castle);
        break;
    case 1:
        success = ov104_0222F44C(castle);
        break;
    case 2:
        success = ov104_0222F4B8(castle);
        break;
    case 3:
        success = ov104_0222F5D4(castle);
        break;
    case 4:
        success = ov104_0222F6C8(castle, arg);
        break;
    case 5:
        success = ov104_0222F710(castle, arg);
        break;
    case 6:
        success = ov104_0222F758(castle);
        break;
    }

    return success;
}

void BattleCastle_ShowPlayerInfoWindows(FrontierScriptManager *scriptMan, BattleCastle *castle)
{
    FrontierGraphics *graphics = FrontierScriptManager_GetGraphics(scriptMan);

    GF_ASSERT(scriptMan->castleHostInfoWin == NULL);
    GF_ASSERT(scriptMan->castlePlayer2InfoWin == NULL);

    if (!BattleCastle_IsMultiPlayerChallenge(castle->challengeType)) {
        scriptMan->castleHostInfoWin = Window_New(HEAP_ID_FIELD2, 1);
        Window_Add(graphics->bgConfig, scriptMan->castleHostInfoWin, 1, 1, 1, 10, 4, 14, ((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4));
        DrawPlayerInfoWindow(graphics->bgConfig, scriptMan->castleHostInfoWin);
    } else {
        scriptMan->castleHostInfoWin = Window_New(HEAP_ID_FIELD2, 1);
        scriptMan->castlePlayer2InfoWin = Window_New(HEAP_ID_FIELD2, 1);

        Window_Add(graphics->bgConfig, scriptMan->castleHostInfoWin, 1, 1, 1, 10, 4, 14, ((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4));
        Window_Add(graphics->bgConfig, scriptMan->castlePlayer2InfoWin, 1, 21, 1, 10, 4, 14, (((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4)) - (10 * 4));

        DrawPlayerInfoWindow(graphics->bgConfig, scriptMan->castleHostInfoWin);
        DrawPlayerInfoWindow(graphics->bgConfig, scriptMan->castlePlayer2InfoWin);
    }

    BattleCastle_PrintPlayersInfo(scriptMan, castle);
}

static void DrawPlayerInfoWindow(BgConfig *bgConfig, Window *window)
{
    Window_DrawStandardFrame(window, TRUE, (1024 - (18 + 12)) - 9, 12);
    Window_FillTilemap(window, 15);
}

void BattleCastle_ClearPlayerInfoWindows(FrontierScriptManager *scriptMan, BattleCastle *castle)
{
    Window *window1, *window2;

    if (!BattleCastle_IsMultiPlayerChallenge(castle->challengeType)) {
        GF_ASSERT(scriptMan->castleHostInfoWin != NULL);
        window1 = scriptMan->castleHostInfoWin;
        Window_EraseStandardFrame(window1, FALSE);
        Windows_Delete(window1, 1);
    } else {
        GF_ASSERT(scriptMan->castleHostInfoWin != NULL);
        GF_ASSERT(scriptMan->castlePlayer2InfoWin != NULL);

        if (CommSys_CurNetId() == 0) {
            window1 = scriptMan->castleHostInfoWin;
            window2 = scriptMan->castlePlayer2InfoWin;
        } else {
            window1 = scriptMan->castlePlayer2InfoWin;
            window2 = scriptMan->castleHostInfoWin;
        }

        Window_EraseStandardFrame(window1, FALSE);
        Windows_Delete(window1, 1);
        Window_EraseStandardFrame(window2, FALSE);
        Windows_Delete(window2, 1);
    }

    scriptMan->castleHostInfoWin = NULL;
    scriptMan->castlePlayer2InfoWin = NULL;
}

void BattleCastle_PrintPlayersInfo(FrontierScriptManager *scriptMan, BattleCastle *castle)
{
    u16 hostsCP, player2CP;

    if (!BattleCastle_IsMultiPlayerChallenge(castle->challengeType)) {
        GF_ASSERT(scriptMan->castleHostInfoWin != NULL);
        hostsCP = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleLatestCPIndex(castle->challengeType));
        PrintPlayerNameandCP(scriptMan, scriptMan->castleHostInfoWin, SaveData_GetTrainerInfo(castle->saveData), hostsCP);
    } else {
        GF_ASSERT(scriptMan->castleHostInfoWin != NULL);
        GF_ASSERT(scriptMan->castlePlayer2InfoWin != NULL);

        if (CommSys_CurNetId() == 0) {
            hostsCP = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleLatestCPIndex(castle->challengeType));
            player2CP = castle->partnersCP;
        } else {
            hostsCP = castle->partnersCP;
            player2CP = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(castle->saveData), BattleFrontierStats_GetCastleLatestCPIndex(castle->challengeType));
        }

        PrintPlayerNameandCP(scriptMan, scriptMan->castleHostInfoWin, CommInfo_TrainerInfo(0), hostsCP);
        PrintPlayerNameandCP(scriptMan, scriptMan->castlePlayer2InfoWin, CommInfo_TrainerInfo(1), player2CP);
    }
}

static void PrintPlayerNameandCP(FrontierScriptManager *scriptMan, Window *window, TrainerInfo *trainer, u16 castlePoints)
{
    String *formatStr = String_Init(10 * 2, scriptMan->heapID);
    String *displayStr = String_Init(10 * 2, scriptMan->heapID);

    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_CASTLE_SELF_APP, HEAP_ID_FIELD2);

    StringTemplate_SetNumber(scriptMan->strTemplate, 0, castlePoints, 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    MessageLoader_GetString(msgLoader, BattleCastleSelfApp_Text_CastlePoints, formatStr);

    StringTemplate_Format(scriptMan->strTemplate, displayStr, formatStr);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, displayStr, 16, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    StringTemplate_SetPlayerName(scriptMan->strTemplate, 0, trainer);

    MessageLoader_GetString(msgLoader, BattleCastleSelfApp_Text_PlayerName, formatStr);

    StringTemplate_Format(scriptMan->strTemplate, displayStr, formatStr);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, displayStr, 0, 0, TEXT_SPEED_INSTANT, NULL);

    String_Free(formatStr);
    String_Free(displayStr);
    MessageLoader_Free(msgLoader);

    Window_CopyToVRAM(window);
}

u16 BattleCastle_GetEarnedBP(BattleCastle *castle)
{
    u8 bp;
    static const u8 sBPPerRoundSolo[CASTLE_MAX_DISTINCT_ROUNDS + 1] = { 0, 3, 3, 4, 4, 5, 5, 7, 7 };
    static const u8 sBPPerRoundWifi[CASTLE_MAX_DISTINCT_ROUNDS + 1] = { 0, 8, 9, 11, 12, 14, 15, 18, 18 };

    u16 currentRound = castle->currentRound;

    if (castle->challengeType == FRONTIER_CHALLENGE_SINGLE || castle->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        if (currentRound >= CASTLE_MAX_DISTINCT_ROUNDS) {
            bp = sBPPerRoundSolo[CASTLE_MAX_DISTINCT_ROUNDS];
        } else {
            bp = sBPPerRoundSolo[currentRound];
        }
    } else {
        if (currentRound >= CASTLE_MAX_DISTINCT_ROUNDS) {
            bp = sBPPerRoundWifi[CASTLE_MAX_DISTINCT_ROUNDS];
        } else {
            bp = sBPPerRoundWifi[currentRound];
        }
    }

    if (castle->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (castle->currentStreak == CASTLE_STREAK_SILVER_BATTLE || castle->currentStreak == CASTLE_STREAK_GOLD_BATTLE) {
            bp = 20;
        }
    }

    return bp;
}
