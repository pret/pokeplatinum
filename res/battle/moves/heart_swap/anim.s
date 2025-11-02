#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, heart_swap_spa
    LoadParticleResource 1, heart_swap_spa
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 1
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 15
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 30
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 45
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 60
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 75
    PlayDelayedSoundEffectC SEQ_SE_DP_293, 86
    BeginLoop 3
    CreateEmitterEx 0, 0, 1, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 12, 32, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    Delay 3
    CreateEmitterEx 0, 1, 1, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 12, 32, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    Delay 3
    CreateEmitterEx 0, 2, 1, 3
    Func_MoveEmitterA2BParabolic 2, 0, 0, 0, 12, 32, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    Delay 3
    CreateEmitterEx 0, 3, 1, 3
    Func_MoveEmitterA2BParabolic 3, 0, 0, 0, 12, 32, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    CreateEmitterEx 0, 4, 1, 3
    Func_MoveEmitterA2BParabolic 4, 0, 0, 0, 12, -32, EMITTER_ANIMATION_MODE_ATK_TO_DEF
    Delay 3
    CreateEmitterEx 0, 5, 1, 3
    Func_MoveEmitterA2BParabolic 5, 0, 0, 0, 12, -32, EMITTER_ANIMATION_MODE_ATK_TO_DEF
    Delay 3
    CreateEmitterEx 0, 6, 1, 3
    Func_MoveEmitterA2BParabolic 6, 0, 0, 0, 12, -32, EMITTER_ANIMATION_MODE_ATK_TO_DEF
    Delay 3
    CreateEmitterEx 0, 7, 1, 3
    Func_MoveEmitterA2BParabolic 7, 0, 0, 0, 12, -32, EMITTER_ANIMATION_MODE_ATK_TO_DEF
    EndLoop
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_LIGHT_RED, 10, 15
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_RED, 10, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
