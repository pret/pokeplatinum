#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 407
    PlayLoopedSoundEffect SEQ_SE_DP_W026, BATTLE_SOUND_PAN_RIGHT, 6, 5
    CreateEmitterEx 0, 0, 1, 3
    CallFunc 66, 6, 0, 8, -3, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 1, 1, 3
    CallFunc 66, 6, 1, 4, -5, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 2, 1, 3
    CallFunc 66, 6, 2, 0, -6, 0, 12, 64
    CreateEmitter 0, 2, 20
    Delay 5
    CreateEmitterEx 0, 3, 1, 3
    CallFunc 66, 6, 3, -8, -6, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 4, 1, 3
    CallFunc 66, 6, 4, -8, -6, 0, 12, 64
    Delay 5
    CreateEmitter 0, 0, 20
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 4, 3
    CallFunc 34, 6, 8, 0, 1, 31764, 10, 0
    CallFunc 34, 6, 16, 0, 1, 31764, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
