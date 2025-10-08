#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, psywave_spa
    CreateEmitterEx 0, 0, 0, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 19, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, 0, TRUE
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_181, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 8
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_181, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffectR SEQ_SE_DP_161, 2
    Delay 10
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
