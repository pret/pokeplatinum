#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 336
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 1
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 5
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 7
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 15
    PlayDelayedSoundEffect SEQ_SE_DP_W103, 0, 20
    CallFunc 36, 5, 1, 0, 1, 2, 258
    CreateEmitter 0, 0, 3
    CallFunc 65, 6, 0, 0, 0, 0, 20, 64
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    StopSoundEffect SEQ_SE_DP_W103
    End
