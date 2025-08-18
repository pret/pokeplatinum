#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 408
    LoadParticleResource 1, 408
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 1
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 15
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 30
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 45
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 60
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 75
    PlayDelayedSoundEffect SEQ_SE_DP_293, 0, 86
    BeginLoop 3
    CreateEmitterEx 0, 0, 1, 3
    CallFunc 66, 7, 0, 0, 0, 0, 12, 32, 1
    Delay 3
    CreateEmitterEx 0, 1, 1, 3
    CallFunc 66, 7, 1, 0, 0, 0, 12, 32, 1
    Delay 3
    CreateEmitterEx 0, 2, 1, 3
    CallFunc 66, 7, 2, 0, 0, 0, 12, 32, 1
    Delay 3
    CreateEmitterEx 0, 3, 1, 3
    CallFunc 66, 7, 3, 0, 0, 0, 12, 32, 1
    CreateEmitterEx 0, 4, 1, 3
    CallFunc 66, 7, 4, 0, 0, 0, 12, -32, 0
    Delay 3
    CreateEmitterEx 0, 5, 1, 3
    CallFunc 66, 7, 5, 0, 0, 0, 12, -32, 0
    Delay 3
    CreateEmitterEx 0, 6, 1, 3
    CallFunc 66, 7, 6, 0, 0, 0, 12, -32, 0
    Delay 3
    CreateEmitterEx 0, 7, 1, 3
    CallFunc 66, 7, 7, 0, 0, 0, 12, -32, 0
    EndLoop
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CallFunc 34, 6, 2, 0, 1, 23199, 10, 15
    CallFunc 34, 6, 8, 0, 1, 23199, 10, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
