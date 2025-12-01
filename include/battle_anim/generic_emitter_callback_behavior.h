#ifndef POKEPLATINUM_BATTLE_ANIM_GENERIC_EMITTER_CALLBACK_BEHAVIOR_H
#define POKEPLATINUM_BATTLE_ANIM_GENERIC_EMITTER_CALLBACK_BEHAVIOR_H

#include "battle_anim/generic_emitter_callback.h"

#include "spl.h"

void GenericEmitterCallback_CallBehaviorFunction(int behaviorValue, SPLEmitter *emitter, GenericEmitterCallbackData *data);
int GenericEmitterCallback_GetBehaviorFlag(int behaviorValue);
int GenericEmitterCallback_GetBehaviorValueCount(void);

#endif // POKEPLATINUM_BATTLE_ANIM_GENERIC_EMITTER_CALLBACK_BEHAVIOR_H
