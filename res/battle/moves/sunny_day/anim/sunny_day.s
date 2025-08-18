#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 258
    CallFunc 33, 5, 0, 1, 0, 10, 13311
    CreateEmitter 0, 1, 0
    CreateEmitter 0, 2, 0
    CreateEmitter 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W080, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 10, 0, 13311
    WaitForAnimTasks
    End
