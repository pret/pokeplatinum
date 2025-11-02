#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sharpen_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_W112, 15, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
