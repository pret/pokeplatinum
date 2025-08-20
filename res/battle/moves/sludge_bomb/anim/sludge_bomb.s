#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 207
    CreateEmitterEx 0, 1, 2, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 14, 64
    PlayLoopedSoundEffect SEQ_SE_DP_W145B, 0, 2, 4
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 2, 12
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Delay 5
    Func_FadeBattlerSprite 8, 0, 2, 31764, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
