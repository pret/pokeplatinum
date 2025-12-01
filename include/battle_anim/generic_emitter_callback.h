#ifndef POKEPLATINUM_BATTLE_ANIM_GENERIC_EMITTER_CALLBACK_H
#define POKEPLATINUM_BATTLE_ANIM_GENERIC_EMITTER_CALLBACK_H

#include "battle_anim/battle_anim_system.h"

enum GenericEmitterCallbackParam {
    GENERIC_EMITTER_CALLBACK_PARAM_PRIORITY = 0,
    GENERIC_EMITTER_CALLBACK_PARAM_TARGET_MODE,
    GENERIC_EMITTER_CALLBACK_PARAM_POSITION,
    GENERIC_EMITTER_CALLBACK_PARAM_AXIS,
    GENERIC_EMITTER_CALLBACK_PARAM_BEHAVIOR,
    GENERIC_EMITTER_CALLBACK_PARAM_CAMERA,

    GENERIC_EMITTER_CALLBACK_PARAM_COUNT
};

typedef struct GenericEmitterCallbackData {
    BattleAnimSystem *battleAnimSys;
    ParticleSystem *particleSys;
    s8 dir;
    int params[GENERIC_EMITTER_CALLBACK_PARAM_COUNT];
    int startBattler;
    int endBattler;
    VecFx32 position;
} GenericEmitterCallbackData;

void BattleAnimEmitterCb_Generic(SPLEmitter *emitter);
s8 GenericEmitterCallback_GetDirectionForBattlers(GenericEmitterCallbackData *data);

#endif // POKEPLATINUM_BATTLE_ANIM_GENERIC_EMITTER_CALLBACK_H
