#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, heart_swap_spa
    LoadParticleResource 1, heart_swap_spa
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 1
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 15
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 30
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 45
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 60
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 75
    PlayDelayedSoundEffect SEQ_SE_DP_293, 0, 86
    BeginLoop 3
    CreateEmitterEx 0, 0, 1, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 12, 32, 1
    Delay 3
    CreateEmitterEx 0, 1, 1, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 12, 32, 1
    Delay 3
    CreateEmitterEx 0, 2, 1, 3
    Func_MoveEmitterA2BParabolic 2, 0, 0, 0, 12, 32, 1
    Delay 3
    CreateEmitterEx 0, 3, 1, 3
    Func_MoveEmitterA2BParabolic 3, 0, 0, 0, 12, 32, 1
    CreateEmitterEx 0, 4, 1, 3
    Func_MoveEmitterA2BParabolic 4, 0, 0, 0, 12, -32, 0
    Delay 3
    CreateEmitterEx 0, 5, 1, 3
    Func_MoveEmitterA2BParabolic 5, 0, 0, 0, 12, -32, 0
    Delay 3
    CreateEmitterEx 0, 6, 1, 3
    Func_MoveEmitterA2BParabolic 6, 0, 0, 0, 12, -32, 0
    Delay 3
    CreateEmitterEx 0, 7, 1, 3
    Func_MoveEmitterA2BParabolic 7, 0, 0, 0, 12, -32, 0
    EndLoop
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_LIGHT_RED, 10, 15
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_LIGHT_RED, 10, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
