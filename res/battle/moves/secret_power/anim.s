#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hit_1_spa
    CreateEmitter 0, 0, 4
    PlaySoundEffectR SEQ_SE_DP_BASI
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
