#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 140
    CreateEmitter 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W114, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
