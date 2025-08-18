#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 302
    LoadParticleResource 1, 302
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 1
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 15
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 30
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 45
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 60
    PlayDelayedSoundEffect SEQ_SE_DP_W179, 0, 75
    BeginLoop 3
    CreateEmitterEx 0, 0, 0, 3
    CallFunc 66, 7, 0, 0, 0, 0, 12, -32, 1
    Delay 3
    CreateEmitterEx 0, 1, 0, 3
    CallFunc 66, 7, 1, 0, 0, 0, 12, -32, 1
    Delay 3
    CreateEmitterEx 0, 2, 0, 3
    CallFunc 66, 7, 2, 0, 0, 0, 12, -32, 1
    Delay 3
    CreateEmitterEx 0, 3, 0, 3
    CallFunc 66, 7, 3, 0, 0, 0, 12, -32, 1
    CreateEmitterEx 0, 4, 0, 3
    CallFunc 66, 7, 4, 0, 0, 0, 12, 32, 0
    Delay 3
    CreateEmitterEx 0, 5, 0, 3
    CallFunc 66, 7, 5, 0, 0, 0, 12, 32, 0
    Delay 3
    CreateEmitterEx 0, 6, 0, 3
    CallFunc 66, 7, 6, 0, 0, 0, 12, 32, 0
    Delay 3
    CreateEmitterEx 0, 7, 0, 3
    CallFunc 66, 7, 7, 0, 0, 0, 12, 32, 0
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
