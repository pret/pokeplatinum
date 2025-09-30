#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, guard_swap_spa
    LoadParticleResource 1, guard_swap_spa
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 1
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 15
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 30
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 45
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 60
    PlayDelayedSoundEffectC SEQ_SE_DP_W179, 75
    BeginLoop 3
    CreateEmitterEx 0, 0, 0, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 12, 32, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    Delay 3
    CreateEmitterEx 0, 1, 0, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 12, 32, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    Delay 3
    CreateEmitterEx 0, 2, 0, 3
    Func_MoveEmitterA2BParabolic 2, 0, 0, 0, 12, 32, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    Delay 3
    CreateEmitterEx 0, 3, 0, 3
    Func_MoveEmitterA2BParabolic 3, 0, 0, 0, 12, 32, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    CreateEmitterEx 0, 4, 0, 3
    Func_MoveEmitterA2BParabolic 4, 0, 0, 0, 12, -32, EMITTER_ANIMATION_MODE_ATK_TO_DEF
    Delay 3
    CreateEmitterEx 0, 5, 0, 3
    Func_MoveEmitterA2BParabolic 5, 0, 0, 0, 12, -32, EMITTER_ANIMATION_MODE_ATK_TO_DEF
    Delay 3
    CreateEmitterEx 0, 6, 0, 3
    Func_MoveEmitterA2BParabolic 6, 0, 0, 0, 12, -32, EMITTER_ANIMATION_MODE_ATK_TO_DEF
    Delay 3
    CreateEmitterEx 0, 7, 0, 3
    Func_MoveEmitterA2BParabolic 7, 0, 0, 0, 12, -32, EMITTER_ANIMATION_MODE_ATK_TO_DEF
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
