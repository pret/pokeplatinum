#ifndef POKEPLATINUM_BATTLE_COMMON_H
#define POKEPLATINUM_BATTLE_COMMON_H

#define ATTACKING_MON   (battleCtx->battleMons[battleCtx->attacker])
#define DEFENDING_MON   (battleCtx->battleMons[battleCtx->defender])
#define ATTACKING_MOVE  (battleCtx->moveSlot[battleCtx->attacker])
#define ATTACKER_ACTION (battleCtx->battlerActions[battleCtx->attacker])

#define ATTACKER_TURN_FLAGS (battleCtx->turnFlags[battleCtx->attacker])
#define DEFENDER_TURN_FLAGS (battleCtx->turnFlags[battleCtx->defender])

#define ATTACKER_SELF_TURN_FLAGS    (battleCtx->selfTurnFlags[battleCtx->attacker])
#define DEFENDER_SELF_TURN_FLAGS    (battleCtx->selfTurnFlags[battleCtx->defender])

#define CURRENT_MOVE_DATA   (battleCtx->aiContext.moveTable[battleCtx->moveCur])
#define MOVE_DATA(move)     (battleCtx->aiContext.moveTable[move])

#define LOAD_SUBSEQ(script)     (BattleSystem_LoadScript(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, script))

// Convenience identifiers for PvE single-encounters/battles.
#define BATTLER_US      0
#define BATTLER_THEM    1

#define CALC_SELF_HIT(move, power)  (BattleSystem_CalcMoveDamage(\
    battleSys,\
    battleCtx,\
    move,\
    0,\
    0,\
    power,\
    0,\
    battleCtx->attacker,\
    battleCtx->attacker,\
    1))

#define MON_IS_UPROARING(mon)   (battleCtx->fieldConditionsMask & (FlagIndex(mon) << FIELD_CONDITION_UPROAR_SHIFT))
#define MON_IS_IDENTIFIED(mon)  ((battleCtx->battleMons[mon].statusVolatile & VOLATILE_CONDITION_FORESIGHT) \
                                || (battleCtx->battleMons[mon].moveEffectsMask & MOVE_EFFECT_MIRACLE_EYE))

#define MON_IS_LOCKED_ONTO(mon1, mon2)  ((battleCtx->battleMons[mon2].moveEffectsMask & MOVE_EFFECT_LOCK_ON) && battleCtx->battleMons[mon2].moveEffectsData.lockOnTarget == mon1)

#define NO_TARGET_SINGLE_TURN   (battleCtx->defender == BATTLER_NONE && BattleMove_IsMultiTurn(battleCtx, battleCtx->moveCur) == FALSE)
#define NO_TARGET_MULTI_TURN    (battleCtx->defender == BATTLER_NONE \
                                && BattleMove_IsMultiTurn(battleCtx, battleCtx->moveCur) == TRUE \
                                && ( \
                                    (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_CHARGE_TURN) \
                                    || (battleCtx->battleStatusMask & SYSCTL_LAST_OF_MULTI_TURN) \
                                ))
#define NO_TARGET               (NO_TARGET_SINGLE_TURN || NO_TARGET_MULTI_TURN)

#define NO_CLOUD_NINE   (BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS, 0, ABILITY_CLOUD_NINE) == FALSE \
                        && BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS, 0, ABILITY_AIR_LOCK) == FALSE)
#define WEATHER_IS_RAIN (battleCtx->fieldConditionsMask & FIELD_CONDITION_RAINING)
#define WEATHER_IS_SAND (battleCtx->fieldConditionsMask & FIELD_CONDITION_SANDSTORM)
#define WEATHER_IS_SUN  (battleCtx->fieldConditionsMask & FIELD_CONDITION_SUNNY)
#define WEATHER_IS_HAIL (battleCtx->fieldConditionsMask & FIELD_CONDITION_HAILING)

enum {
    BATTLE_STAT_HP,
    BATTLE_STAT_ATTACK,
    BATTLE_STAT_DEFENSE,
    BATTLE_STAT_SPEED,
    BATTLE_STAT_SP_ATTACK,
    BATTEL_STAT_SP_DEFENSE,
    BATTLE_STAT_ACCURACY,
    BATTLE_STAT_EVASION,

    BATTLE_STAT_MAX
};

#endif // POKEPLATINUM_BATTLE_COMMON_H