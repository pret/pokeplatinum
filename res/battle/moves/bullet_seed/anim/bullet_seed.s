#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 348
    PlayLoopedSoundEffect SEQ_SE_DP_W202B, 0, 3, 9
    CreateEmitterEx 0, 0, 0, 3
    CallFunc 65, 6, 0, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 1, 0, 3
    CallFunc 65, 6, 1, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 2, 0, 1, 10, 264
    CreateEmitterEx 0, 2, 0, 3
    CallFunc 65, 6, 2, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 3, 0, 3
    CallFunc 65, 6, 3, 0, 0, 0, 10, 64
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 5, 6
    Delay 2
    CreateEmitterEx 0, 4, 0, 3
    CallFunc 65, 6, 4, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 5, 0, 3
    CallFunc 65, 6, 5, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 6, 0, 3
    CallFunc 65, 6, 6, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 7, 0, 3
    CallFunc 65, 6, 7, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 0, 0, 3
    CallFunc 65, 6, 0, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 1, 0, 3
    CallFunc 65, 6, 1, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 2, 0, 3
    CallFunc 65, 6, 2, 0, 0, 0, 10, 64
    Delay 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
