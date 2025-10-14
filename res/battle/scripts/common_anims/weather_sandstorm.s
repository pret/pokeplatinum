#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 219
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    PlayPannedSoundEffect SEQ_SE_DP_W201, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
