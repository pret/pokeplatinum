#ifndef POKEPLATINUM_BATTLE_COMMON_H
#define POKEPLATINUM_BATTLE_COMMON_H

#define ATTACKING_MON   (battleCtx->battleMons[battleCtx->attacker])
#define DEFENDING_MON   (battleCtx->battleMons[battleCtx->defender])
#define ATTACKING_MOVE  (battleCtx->moveSlot[battleCtx->attacker])
#define ATTACKER_ACTION (battleCtx->battlerActions[battleCtx->attacker])

#define ATTACKER_TURN_FLAGS (battleCtx->turnFlags[battleCtx->attacker])
#define DEFENDER_TURN_FLAGS (battleCtx->turnFlags[battleCtx->defender])

#define CURRENT_MOVE_DATA   (battleCtx->aiContext.moveTable[battleCtx->moveCur])

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

#define NO_TARGET_SINGLE_TURN   (battleCtx->defender == BATTLER_NONE && BattleMove_IsMultiTurn(battleCtx, battleCtx->moveCur) == FALSE)
#define NO_TARGET_MULTI_TURN    (battleCtx->defender == BATTLER_NONE \
                                && BattleMove_IsMultiTurn(battleCtx, battleCtx->moveCur) == TRUE \
                                && ( \
                                    (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_CHARGE_TURN) \
                                    || (battleCtx->battleStatusMask & SYSCTL_LAST_OF_MULTI_TURN) \
                                ))
#define NO_TARGET               (NO_TARGET_SINGLE_TURN || NO_TARGET_MULTI_TURN)

#define NO_CLOUD_NINE   (BattleSystem_CountAbility(battleSys, battleCtx, 8, 0, ABILITY_CLOUD_NINE) == FALSE \
                        && BattleSystem_CountAbility(battleSys, battleCtx, 8, 0, ABILITY_AIR_LOCK) == FALSE)

#endif // POKEPLATINUM_BATTLE_COMMON_H