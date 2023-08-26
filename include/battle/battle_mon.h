#ifndef POKEPLATINUM_BATTLE_MON_H
#define POKEPLATINUM_BATTLE_MON_H

#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/string.h"

typedef struct MoveEffectsData {
    u32 disabledTurns           :3,
        encoredTurns            :3,
        chargedTurns            :2,
        tauntedTurns            :3,
        protectSuccessTurns     :2,
        perishSongTurns         :2,
        rolloutCount            :3,
        furyCutterCount         :3,
        stockpileCount          :3,
        stockpileDefBoosts      :3,
        stockpileSpDefBoosts    :3,
        truantFlag              :1,
        flashFireFlag           :1;
    
    u32 battlerIdLockOn     :2,
        mimickedMoveSlot    :4,
        battlerIdBinding    :2,
        battlerIdMeanLook   :2,
        lastResortCount     :3,
        magnetRiseTurns     :3,
        healBlockTurns      :3,
        embargoTurns        :3,
        hasHeldItem         :1, // this is specifically for tracking Unburden; 0 if no item was ever held, or if item is suppresed with Knock Off
        metronomeTurns      :4,
        micleBerryActive    :1,
        custapBerryActive   :1,
        quickClawActive     :1,
        meFirstActive       :1,
        padding0004_1F      :1;

    int rechargeTurnCount;
    int fakeOutTurnCount;
    int slowStartTurnCount;
    int meFirstTurnCount;
    int substituteHP;
    u32 transformedPID;

    u16 disabledMove;
    u16 bindingMove;
    u16 encoredMove;
    u16 encoredMoveSlot;
    u16 lastResortMoves[4];
    u16 choiceLockedMove;
    u16 transformedGender;

    int itemHPRecovery;
} MoveEffectsData;

typedef struct BattleMon {
    u16 species;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
    u16 moves[LEARNED_MOVES_MAX];

    u32 hpIV        :5,
        attackIV    :5,
        defenseIV   :5,
        speedIV     :5,
        spAttackIV  :5,
        spDefenseIV :5,
        isEgg       :1,
        hasNickname :1;

    s8 statBoosts[NUM_BOOSTABLE_STATS];

    int weight;

    u8 type1;
    u8 type2;
    u8 formNum          :5,
       isShiny          :1,
       padding0026_06   :2;
    u8 ability;

    u32 weatherAbilityAnnounced :1,
        intimidateAnnounced     :1,
        traceAnnounced          :1,
        downloadAnnounced       :1,
        anticipationAnnounced   :1,
        forewarnAnnounced       :1,
        slowStartAnnounced      :1,
        slowStartFinished       :1,
        friskAnnounced          :1,
        moldBreakerAnnounced    :1,
        pressureAnnounced       :1,
        padding0028_0B          :21;

    u8 ppCur[LEARNED_MOVES_MAX];
    u8 ppUps[LEARNED_MOVES_MAX];

    u8 level;
    u8 friendship;

    u16 nickname[MON_NAME_LEN + 1];

    s32 curHP;
    u32 maxHP;

    u16 originalTrainerName[PERSON_NAME_LEN + 1];

    u32 exp;
    u32 pid;
    u32 status;
    u32 statusVolatile;
    u32 originalTrainerId;

    u16 heldItem;
    u16 padding007A;    // unused

    u8 timesDamaged;
    u8 trainerMessageFlags;
    u8 gender                   :4,
       originalTrainerGender    :4;
    u8 capturedBall;

    u32 moveEffectsMask;
    u32 moveEffectsTemp;
    MoveEffectsData moveEffectsData;
} BattleMon;

#endif // POKEPLATINUM_BATTLE_MON_H
