#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 214
    CreateEmitter 0, 2, 0
    CreateEmitter 0, 3, 0
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    PlayPannedSoundEffect SEQ_SE_DP_W195, 0
    Delay 10
    CallFunc 33, 5, 0, 1, 0, 16, 0
    Delay 15
    CallFunc 34, 5, 2, 1, 1, 13741, 16
    CallFunc 34, 5, 4, 1, 1, 13741, 16
    CallFunc 34, 5, 8, 1, 1, 13741, 16
    CallFunc 34, 5, 16, 1, 1, 13741, 16
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 16, 0, 0
    WaitForAnimTasks
    End
