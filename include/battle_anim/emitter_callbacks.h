#ifndef POKEPLATINUM_BATTLE_ANIM_EMITTER_CALLBACKS_H
#define POKEPLATINUM_BATTLE_ANIM_EMITTER_CALLBACKS_H

#include "spl.h"

void BattleAnimEmitterCb_Nop2(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetPosToEnemy1(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetPosToPlayer1(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetPosToDefender(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetPosToAttacker(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetPosToAttacker2(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetPosToAttackerSide(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetPosToDefenderSide(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetPosBasedOnBattlers(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_ConvergeDefault(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_ConvergeCenter(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_ConvergeDefender(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_ConvergeAttacker(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_ConvergeExplicit(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_MagnetDefault(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_MagnetCenter(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_MagnetDefender(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_MagnetAttacker(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPos_MagnetExplicit(SPLEmitter *emitter);
void BattleAnimEmitterCb_SetAxisAndPosReverse(SPLEmitter *emitter);

#endif // POKEPLATINUM_BATTLE_ANIM_EMITTER_CALLBACKS_H
