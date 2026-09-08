#include "overlay104/battle_arcade_helpers.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "generated/ai_flags.h"
#include "generated/frontier_trainers.h"

#include "struct_defs/frontier_trainer_base.h"

#include "overlay104/battle_arcade.h"
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
#include "save_player.h"
#include "trainer_info.h"

static u32 BattleArcade_GetBattleType(u8 challengeType);
static u16 BattleArcade_GetAIMask(BattleArcade *battleArcade);
static int BattleArcade_GetOpponentTrainerID(u8 challengeType, int currentRound, int trainerOffset);

static const struct {
    u16 normalMin;
    u16 normalMax;
    u16 finalMin;
    u16 finalMax;
} sBattleArcadeOpponentPools[] = {
    { FRONTIER_TRAINER_YOUNGSTER_JIM, FRONTIER_TRAINER_REPORTER_GINGHAM, FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_SOCIALITE_CARMEN },
    { FRONTIER_TRAINER_HIKER_RAIDEN, FRONTIER_TRAINER_SOCIALITE_CARMEN, FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_CLOWN_PRESCOT },
    { FRONTIER_TRAINER_CYCLIST_GASPAR, FRONTIER_TRAINER_CLOWN_PRESCOT, FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_ACE_TRAINER_DANIELA },
    { FRONTIER_TRAINER_PSYCHIC_ALPHA, FRONTIER_TRAINER_ACE_TRAINER_DANIELA, FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_IDOL_UTAH },
    { FRONTIER_TRAINER_ACE_TRAINER_YARDLEY, FRONTIER_TRAINER_IDOL_UTAH, FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_PI_SERGEI },
    { FRONTIER_TRAINER_YOUNGSTER_KADEN, FRONTIER_TRAINER_PI_SERGEI, FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_BREEDER_ANTONIA },
    { FRONTIER_TRAINER_JOGGER_COLT, FRONTIER_TRAINER_BREEDER_ANTONIA, FRONTIER_TRAINER_ACE_TRAINER_SAWYER, FRONTIER_TRAINER_VETERAN_ALFRED },
    { FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA, FRONTIER_TRAINER_CAMPER_FREDDY, FRONTIER_TRAINER_IDOL_NISSA }
};

static const u8 sBonus1BP[] = { 1, 1, 1 };

static const u8 sBonus3BP[] = { 3, 3, 3 };

static int BattleArcade_GetOpponentTrainerID(u8 challengeType, int currentRound, int trainerOffset)
{
    if (challengeType == FRONTIER_CHALLENGE_SINGLE) {
        int currentStreak = (currentRound * ARCADE_BATTLES_PER_ROUND) + (trainerOffset + 1);

        if (currentStreak == ARCADE_STREAK_SILVER_BATTLE) {
            return FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_SILVER;
        } else if (currentStreak == ARCADE_STREAK_GOLD_BATTLE) {
            return FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_GOLD;
        }
    }

    if (currentRound >= NELEMS(sBattleArcadeOpponentPools)) {
        currentRound = NELEMS(sBattleArcadeOpponentPools) - 1;
    }

    int spread, min;
    if (trainerOffset == ARCADE_BATTLES_PER_ROUND - 1 || trainerOffset == (ARCADE_BATTLES_PER_ROUND * 2) - 1) {
        spread = sBattleArcadeOpponentPools[currentRound].finalMax - sBattleArcadeOpponentPools[currentRound].finalMin;
        min = sBattleArcadeOpponentPools[currentRound].finalMin;
    } else {
        spread = sBattleArcadeOpponentPools[currentRound].normalMax - sBattleArcadeOpponentPools[currentRound].normalMin;
        min = sBattleArcadeOpponentPools[currentRound].normalMin;
    }

    return min + LCRNG_Next() % spread;
}

void BattleArcade_PickOpponentTrainers(u8 challengeType, int currentRound, u16 trainerIDs[], u8 numTrainers)
{
    int i = 0;
    do {
        trainerIDs[i] = BattleArcade_GetOpponentTrainerID(challengeType, currentRound, i);

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

u8 BattleArcade_GetPlayerPartySize(u8 challengeType, BOOL includePartnerMons)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return ARCADE_PARTY_SIZE_SOLO;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (includePartnerMons == FALSE) {
            return ARCADE_PARTY_SIZE_MULTI;
        } else {
            return ARCADE_PARTY_SIZE_MULTI * 2;
        }
    }

    GF_ASSERT(FALSE);
    return ARCADE_PARTY_SIZE_SOLO;
}

u8 BattleArcade_GetOpponentPartySize(u8 challengeType, BOOL includeBothOpponents)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return ARCADE_PARTY_SIZE_SOLO;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (includeBothOpponents == FALSE) {
            return ARCADE_PARTY_SIZE_MULTI;
        } else {
            return ARCADE_PARTY_SIZE_MULTI * 2;
        }
    }

    GF_ASSERT(FALSE);
    return ARCADE_PARTY_SIZE_SOLO;
}

FieldBattleDTO *BattleArcade_SetupBattle(BattleArcade *battleArcade, FieldFrontierDTO *fieldData)
{
    int i;
    u8 baseSlotID;
    FrontierTrainer trDataDTO;

    u8 playerPartySize = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, FALSE);
    u8 opponentPartySize = BattleArcade_GetOpponentPartySize(battleArcade->challengeType, FALSE);
    FieldBattleDTO *battleDTO = FieldBattleDTO_New(HEAP_ID_FIELD2, BattleArcade_GetBattleType(battleArcade->challengeType));

    FieldBattleDTO_InitFromGameState(battleDTO, NULL, fieldData->saveData, fieldData->mapHeaderID, fieldData->journalEntry, fieldData->bagCursor, fieldData->subscreenCursorOn);

    battleDTO->background = BACKGROUND_BATTLE_ARCADE;
    battleDTO->terrain = TERRAIN_BATTLE_ARCADE;
    battleDTO->fieldWeather = battleArcade->weather;

    Party *playersParty = battleArcade->playersParty;
    Party *opponentsParty = battleArcade->opponentsParty;

    if (battleArcade->activeEffect == ARCADE_EFFECT_SWAP_MONS) {
        playersParty = battleArcade->opponentsParty;
        opponentsParty = battleArcade->playersParty;
    }

    Party_InitWithCapacity(battleDTO->parties[BATTLER_PLAYER_1], playerPartySize);

    if (CommSys_CurNetId() == 0) {
        baseSlotID = 0;
    } else {
        baseSlotID = ARCADE_PARTY_SIZE_MULTI;
    }

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < playerPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(playersParty, baseSlotID + i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

    FrontierTrainerBase *trData = BattleFrontier_GetTrainer(&trDataDTO, battleArcade->trainerIDs[battleArcade->currentBattle], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);

    Heap_Free(trData);
    FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_1, HEAP_ID_FIELD2);
    Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_1], BattleArcade_GetOpponentPartySize(battleArcade->challengeType, 0));

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleDTO->trainer[i].header.aiMask = BattleArcade_GetAIMask(battleArcade);
    }

    mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < opponentPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(opponentsParty, i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_1);
    }

    Heap_Free(mon);

    switch (battleArcade->challengeType) {
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

        TrainerInfo_Copy(CommInfo_TrainerInfo(1 - CommSys_CurNetId()), battleDTO->trainerInfo[BATTLER_PLAYER_2]);

        trData = BattleFrontier_GetTrainer(&trDataDTO, battleArcade->trainerIDs[battleArcade->currentBattle + 7], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        Heap_Free(trData);

        FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_2, HEAP_ID_FIELD2);
        Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_2], BattleArcade_GetOpponentPartySize(battleArcade->challengeType, 0));

        mon = Pokemon_New(HEAP_ID_FIELD2);

        for (i = 0; i < opponentPartySize; i++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(opponentsParty, opponentPartySize + i), mon);
            FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_2);
        }

        Heap_Free(mon);
        break;
    }

    Party_HealAllMembers(battleArcade->playersParty);
    Party_HealAllMembers(battleArcade->opponentsParty);

    return battleDTO;
}

static u32 BattleArcade_GetBattleType(u8 challengeType)
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

u8 BattleArcade_GetPokemonLevel(BattleArcade *battleArcade)
{
    return ARCADE_MAX_LEVEL;
}

BOOL BattleArcade_IsMultiPlayerChallenge(u8 challengeType)
{
    return challengeType == FRONTIER_CHALLENGE_MULTI || challengeType == FRONTIER_CHALLENGE_MULTI_WFC;
}

static void AddSummaryDetailsToMon(BattleArcade *battleArcade, Pokemon *mon)
{
    Pokemon_UpdateAfterCatch(mon, SaveData_GetTrainerInfo(battleArcade->saveData), ITEM_POKE_BALL, 0, 0, HEAP_ID_FIELD2);
}

void BattleArcade_AddMonToParty(BattleArcade *battleArcade, Party *party, Pokemon *mon)
{
    AddSummaryDetailsToMon(battleArcade, mon);
    Party_AddPokemon(party, mon);
}

void BattleArcade_SetupOpponentsParty(BattleArcade *battleArcade)
{
    Party_Init(battleArcade->opponentsParty);

    u8 partySize = BattleArcade_GetOpponentPartySize(battleArcade->challengeType, TRUE);
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (int i = 0; i < partySize; i++) {
        FrontierPokemon_InitPokemon(&battleArcade->opponentMons[i], mon, BattleArcade_GetPokemonLevel(battleArcade));
        BattleArcade_AddMonToParty(battleArcade, battleArcade->opponentsParty, mon);

        Pokemon *opponentMon = Party_GetPokemonBySlotIndex(battleArcade->opponentsParty, i);

        u32 noItem = ITEM_NONE;
        Pokemon_SetValue(opponentMon, MON_DATA_HELD_ITEM, &noItem);
    }

    Heap_Free(mon);
}

u16 BattleArcade_GetFreeBPFromEvent(BattleArcade *battleArcade, u8 activeEffect)
{
    u16 currentRound = BattleArcade_GetCurrentRound(battleArcade);

    u16 bp;
    if (activeEffect == ARCADE_EFFECT_GET_1_BP) {
        if (currentRound < 3) {
            bp = sBonus1BP[0];
        } else if (currentRound < 6) {
            bp = sBonus1BP[1];
        } else {
            bp = sBonus1BP[2];
        }
    } else {
        if (currentRound < 3) {
            bp = sBonus3BP[0];
        } else if (currentRound < 6) {
            bp = sBonus3BP[1];
        } else {
            bp = sBonus3BP[2];
        }
    }

    return bp;
}

static u16 BattleArcade_GetAIMask(BattleArcade *battleArcade)
{
    u16 aiMask, round;

    if (battleArcade->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (battleArcade->trainerIDs[battleArcade->currentBattle] == FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_SILVER
            || battleArcade->trainerIDs[battleArcade->currentBattle] == FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_GOLD) {
            return AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;
        }
    }

    round = BattleArcade_GetCurrentRound(battleArcade);
    aiMask = AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;

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

u16 BattleArcade_GetCurrentRound(BattleArcade *battleArcade)
{
    u16 currentRound = battleArcade->currentRound;

    if (BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType) == TRUE) {
        if (battleArcade->unk_A76 > battleArcade->currentRound) {
            currentRound = battleArcade->unk_A76;
        }
    }

    return currentRound;
}

u8 BattleArcade_GetCategoryFromEffect(u8 effect)
{
    if (effect < ARCADE_EFFECT_LOWER_ALLY_HP) {
        return ARCADE_EFFECT_CATEGORY_FOE;
    } else if (effect < ARCADE_EFFECT_SUNNY_BATTLE) {
        return ARCADE_EFFECT_CATEGORY_ALLY;
    } else if (effect < ARCADE_EFFECT_SWAP_MONS) {
        return ARCADE_EFFECT_CATEGORY_ENV;
    }

    return ARCADE_EFFECT_CATEGORY_BONUS;
}
