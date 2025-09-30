#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, spikes_spa
    PlayLoopedSoundEffectR SEQ_SE_DP_W026, 6, 5
    CreateEmitterEx 0, 0, 0, 3
    Func_MoveEmitterA2BParabolic 0, 8, -3, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 1, 0, 3
    Func_MoveEmitterA2BParabolic 1, 4, -5, 0, 12, 64
    CreateEmitter 0, 1, 20
    Delay 5
    CreateEmitterEx 0, 2, 0, 3
    Func_MoveEmitterA2BParabolic 2, 0, -6, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 3, 0, 3
    Func_MoveEmitterA2BParabolic 3, -8, -6, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 4, 0, 3
    Func_MoveEmitterA2BParabolic 4, -4, -3, 0, 12, 64
    Delay 6
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
