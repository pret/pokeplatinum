#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hit_1_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_BASI
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
