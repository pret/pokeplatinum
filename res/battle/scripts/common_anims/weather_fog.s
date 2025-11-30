#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 29
    PlayLoopedSoundEffect SEQ_SE_DP_W109, 0, 4, 3
    CreateEmitter 0, 2, EMITTER_CB_NONE
    CreateEmitter 0, 3, EMITTER_CB_NONE
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
