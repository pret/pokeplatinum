#include "overlay104/battle_castle_helpers.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "generated/ai_flags.h"
#include "generated/frontier_trainers.h"

#include "struct_defs/battle_frontier.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "math_util.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"

#define EMBLEM_FRAME_HEIGHT 3
#define EMBLEM_FRAME_WIDTH  10
#define EMBLEM_FRAME_HALF   (EMBLEM_FRAME_WIDTH / 2)

static int BattleCastle_GetOpponentTrainerID(u8 challengeType, int currentRound, int trainerOffset);
static u32 BattleCastle_GetBattleType(u8 challengeType);
static u16 BattleCastle_GetAIMask(BattleCastle *battleCastle);
static void GetEmblemTiles(u16 *tiles, u16 currentRound);
static u16 CapCurrentRound(u16 currentRound);

static const struct {
    u16 normalMin;
    u16 normalMax;
    u16 finalMin;
    u16 finalMax;
} sBattleCastleOpponentPools[] = {
    { FRONTIER_TRAINER_YOUNGSTER_JIM, FRONTIER_TRAINER_REPORTER_GINGHAM, FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_SOCIALITE_CARMEN },
    { FRONTIER_TRAINER_HIKER_RAIDEN, FRONTIER_TRAINER_SOCIALITE_CARMEN, FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_CLOWN_PRESCOT },
    { FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_CLOWN_PRESCOT, FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_ACE_TRAINER_DANIELA },
    { FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_ACE_TRAINER_DANIELA, FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_IDOL_UTAH },
    { FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_IDOL_UTAH, FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_PI_SERGEI },
    { FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_PI_SERGEI, FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_BREEDER_ANTONIA },
    { FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_BREEDER_ANTONIA, FRONTIER_TRAINER_ACE_TRAINER_SAWYER, FRONTIER_TRAINER_VETERAN_ALFRED },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA, FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA }
};

static int BattleCastle_GetOpponentTrainerID(u8 challengeType, int currentRound, int trainerOffset)
{
    if (challengeType == FRONTIER_CHALLENGE_SINGLE) {
        int currentStreak = (currentRound * CASTLE_BATTLES_PER_ROUND) + (trainerOffset + 1);

        if (currentStreak == CASTLE_STREAK_SILVER_BATTLE) {
            return FRONTIER_TRAINER_CASTLE_VALET_DARACH_SILVER;
        } else if (currentStreak == CASTLE_STREAK_GOLD_BATTLE) {
            return FRONTIER_TRAINER_CASTLE_VALET_DARACH_GOLD;
        }
    }

    if (currentRound >= NELEMS(sBattleCastleOpponentPools)) {
        currentRound = NELEMS(sBattleCastleOpponentPools) - 1;
    }

    int spread, min;
    if (trainerOffset == CASTLE_BATTLES_PER_ROUND - 1 || trainerOffset == (CASTLE_BATTLES_PER_ROUND * 2) - 1) {
        spread = sBattleCastleOpponentPools[currentRound].finalMax - sBattleCastleOpponentPools[currentRound].finalMin;
        min = sBattleCastleOpponentPools[currentRound].finalMin;
    } else {
        spread = sBattleCastleOpponentPools[currentRound].normalMax - sBattleCastleOpponentPools[currentRound].normalMin;
        min = sBattleCastleOpponentPools[currentRound].normalMin;
    }

    return min + LCRNG_Next() % spread;
}

void BattleCastle_PickOpponentTrainers(u8 challengeType, int currentRound, u16 trainerIDs[], u8 numTrainers)
{
    int i = 0;
    do {
        trainerIDs[i] = BattleCastle_GetOpponentTrainerID(challengeType, currentRound, i);

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

u8 BattleCastle_GetPlayerPartySize(u8 challengeType, BOOL includePartnersMons)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return 3;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (includePartnersMons == FALSE) {
            return 2;
        } else {
            return 4;
        }
    }

    GF_ASSERT(FALSE);
    return 3;
}

u8 BattleCastle_GetOpponentPartySize(u8 challengeType, BOOL includeBothOpponents)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return 3;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (includeBothOpponents == FALSE) {
            return 2;
        } else {
            return 4;
        }
    }

    GF_ASSERT(FALSE);
    return 3;
}

FieldBattleDTO *BattleCastle_SetupBattle(BattleCastle *battleCastle, FieldFrontierDTO *fieldData)
{
    int i;
    u8 baseSlotID;
    FrontierTrainerDataDTO trDataDTO;

    u8 playerPartySize = BattleCastle_GetPlayerPartySize(battleCastle->challengeType, FALSE);
    u8 opponentPartySize = BattleCastle_GetOpponentPartySize(battleCastle->challengeType, FALSE);

    Party_HealAllMembers(battleCastle->opponentsParty);
    FieldBattleDTO *battleDTO = FieldBattleDTO_New(HEAP_ID_FIELD2, BattleCastle_GetBattleType(battleCastle->challengeType));
    FieldBattleDTO_InitFromGameState(battleDTO, NULL, fieldData->saveData, fieldData->mapHeaderID, fieldData->journalEntry, fieldData->bagCursor, fieldData->subscreenCursorOn);

    battleDTO->background = BACKGROUND_BATTLE_CASTLE;
    battleDTO->terrain = TERRAIN_BATTLE_CASTLE;

    Party_InitWithCapacity(battleDTO->parties[BATTLER_PLAYER_1], playerPartySize);

    if (CommSys_CurNetId() == 0) {
        baseSlotID = 0;
    } else {
        baseSlotID = 2;
    }

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < playerPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(battleCastle->playersParty, baseSlotID + i), mon);

        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

    Heap_Free(BattleFrontier_GetTrainerData(&trDataDTO, battleCastle->trainerIDs[battleCastle->currentBattle], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));
    FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_1, HEAP_ID_FIELD2);
    Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_1], BattleCastle_GetOpponentPartySize(battleCastle->challengeType, 0));

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleDTO->trainer[i].header.aiMask = BattleCastle_GetAIMask(battleCastle);
    }

    mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < opponentPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(battleCastle->opponentsParty, i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_1);
    }

    Heap_Free(mon);

    switch (battleCastle->challengeType) {
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

        TrainerInfo_Copy(CommInfo_TrainerInfo(1 - CommSys_CurNetId()), battleDTO->trainerInfo[BATTLER_PLAYER_2]);

        Heap_Free(BattleFrontier_GetTrainerData(&trDataDTO, battleCastle->trainerIDs[battleCastle->currentBattle + CASTLE_BATTLES_PER_ROUND], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

        FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_2, HEAP_ID_FIELD2);
        Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_2], BattleCastle_GetOpponentPartySize(battleCastle->challengeType, 0));

        mon = Pokemon_New(HEAP_ID_FIELD2);

        for (i = 0; i < opponentPartySize; i++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(battleCastle->opponentsParty, opponentPartySize + i), mon);
            FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_2);
        }

        Heap_Free(mon);
        break;
    }

    return battleDTO;
}

static u32 BattleCastle_GetBattleType(u8 challengeType)
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

u8 BattleCastle_GetOpponentLevel(BattleCastle *battleCastle)
{
    return CASTLE_MAX_LEVEL;
}

BOOL BattleCastle_IsMultiPlayerChallenge(u8 challengeType)
{
    return challengeType == FRONTIER_CHALLENGE_MULTI || challengeType == FRONTIER_CHALLENGE_MULTI_WFC;
}

void BattleCastle_RevivePokemon(Party *party)
{
    int partySize = Party_GetCurrentCount(party);

    for (int i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (!Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL)) {
            continue;
        }

        u32 value;
        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0) {
            value = 1;
            Pokemon_SetValue(mon, MON_DATA_HP, &value);
        }

        value = 0;
        Pokemon_SetValue(mon, MON_DATA_STATUS, &value);
    }
}

static void AddSummaryDetailsToMon(BattleCastle *battleCastle, Pokemon *mon)
{
    Pokemon_UpdateAfterCatch(mon, SaveData_GetTrainerInfo(battleCastle->saveData), ITEM_POKE_BALL, 0, 0, HEAP_ID_FIELD2);
}

void BattleCastle_AddMonToParty(BattleCastle *battleCastle, Party *party, Pokemon *mon)
{
    AddSummaryDetailsToMon(battleCastle, mon);
    Party_AddPokemon(party, mon);
}

void BattleCastle_SetupOpponentsParty(BattleCastle *battleCastle)
{
    Party_Init(battleCastle->opponentsParty);

    u8 partySize = BattleCastle_GetOpponentPartySize(battleCastle->challengeType, TRUE);
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (int i = 0; i < partySize; i++) {
        FrontierPokemonDataDTO_InitPokemon(&battleCastle->opponentMons[i], mon, BattleCastle_GetOpponentLevel(battleCastle));
        BattleCastle_AddMonToParty(battleCastle, battleCastle->opponentsParty, mon);
    }

    Heap_Free(mon);
}

static u16 BattleCastle_GetAIMask(BattleCastle *battleCastle)
{
    if (battleCastle->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (battleCastle->trainerIDs[battleCastle->currentBattle] == FRONTIER_TRAINER_CASTLE_VALET_DARACH_SILVER
            || battleCastle->trainerIDs[battleCastle->currentBattle] == FRONTIER_TRAINER_CASTLE_VALET_DARACH_GOLD) {
            return AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;
        }
    }

    u16 v1 = BattleCastle_GetCurrentRound(battleCastle);
    u16 aiMask = AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;

    switch (v1 + 1) {
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

u16 BattleCastle_GetCurrentRound(BattleCastle *battleCastle)
{
    u16 currentRound = battleCastle->currentRound;

    if (BattleCastle_IsMultiPlayerChallenge(battleCastle->challengeType) == TRUE) {
        if (battleCastle->unk_A12 > battleCastle->currentRound) {
            currentRound = battleCastle->unk_A12;
        }
    }

    return currentRound;
}

void BattleCastle_UpdateEmblemFrame(BgConfig *bgConfig, BattleCastle *battleCastle, u32 bgLayer)
{
    u16 tiles[EMBLEM_FRAME_HEIGHT * EMBLEM_FRAME_WIDTH];

    GetEmblemTiles(tiles, BattleCastle_GetCurrentRound(battleCastle));

    Bg_LoadToTilemapRect(bgConfig, bgLayer, tiles, 11, 6, EMBLEM_FRAME_WIDTH, EMBLEM_FRAME_HEIGHT);
    Bg_ScheduleTilemapTransfer(bgConfig, bgLayer);
}

static void GetEmblemTiles(u16 *tiles, u16 currentRound)
{
    u8 baseTileOffset[EMBLEM_FRAME_WIDTH];
    u16 round = CapCurrentRound(currentRound);

    for (u32 i = 0; i < EMBLEM_FRAME_HALF; i++) {
        baseTileOffset[i] = i;
        baseTileOffset[EMBLEM_FRAME_HALF + i] = EMBLEM_FRAME_HALF - 1 - i;
    }

    u32 startTile = (96 * round) + 16;

    for (u32 y = 0; y < EMBLEM_FRAME_HEIGHT; y++) {
        for (u32 x = 0; x < EMBLEM_FRAME_WIDTH; x++) {
            tiles[x + (y * EMBLEM_FRAME_WIDTH)] = startTile + (y * 32) + baseTileOffset[x];

            if (x >= EMBLEM_FRAME_HALF) {
                tiles[x + (y * EMBLEM_FRAME_WIDTH)] |= BG_TILE_FLIP_H;
            }
        }
    }
}

static u16 CapCurrentRound(u16 currentRound)
{
    if (currentRound >= CASTLE_MAX_DISTINCT_ROUNDS) {
        return CASTLE_MAX_DISTINCT_ROUNDS - 1;
    }

    return currentRound;
}

void BattleCastle_SpendCastlePoints(BattleFrontierSave *frontier, u8 challengeType, int castlePoints)
{
    BattleFrontierSave_SubtractFromStat(frontier, BattleFrontierStats_GetCastleLatestCPIndex(challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(challengeType)), castlePoints);
    u16 totalSpent = BattleFrontierSave_GetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleSpentCPIndex(challengeType));

    if (totalSpent + castlePoints > 9999) {
        BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleSpentCPIndex(challengeType), 9999);
    } else {
        BattleFrontierSave_AddToStat(frontier, BattleFrontierStats_GetCastleSpentCPIndex(challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleSpentCPIndex(challengeType)), castlePoints);
    }
}
