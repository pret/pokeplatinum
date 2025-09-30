#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, haze_spa
    CreateEmitter 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W114, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
