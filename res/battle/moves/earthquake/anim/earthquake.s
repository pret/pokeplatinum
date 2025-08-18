#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 119
    CallFunc 24, 1, 0
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W089, 0
    CreateEmitter 0, 0, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
