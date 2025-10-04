#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, swords_dance_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlaySoundEffectL SEQ_SE_DP_SHUSHU
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
