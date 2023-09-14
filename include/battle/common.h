#ifndef POKEPLATINUM_BATTLE_COMMON_H
#define POKEPLATINUM_BATTLE_COMMON_H

#define ATTACKING_MON   (battleCtx->battleMons[battleCtx->attacker])
#define DEFENDING_MON   (battleCtx->battleMons[battleCtx->defender])

#define LOAD_SUBSEQ(script)     (BattleSystem_LoadScript(battleCtx, NARC_INDEX_BATTLE__SKILL__SUB_SEQ, script))

// Convenience identifiers for PvE single-encounters/battles.
#define BATTLER_US      0
#define BATTLER_THEM    1

#endif // POKEPLATINUM_BATTLE_COMMON_H