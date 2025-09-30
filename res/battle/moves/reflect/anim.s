#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, reflect_spa
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 0, 19
    PlaySoundEffectL SEQ_SE_DP_W115
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
