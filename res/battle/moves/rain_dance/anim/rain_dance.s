#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 257
    CallFunc 33, 5, 0, 1, 0, 12, 0
    CreateEmitter 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W240, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
