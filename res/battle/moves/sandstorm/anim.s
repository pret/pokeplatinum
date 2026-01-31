#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sandstorm_spa
    CreateEmitter 0, 0, EMITTER_CB_NONE
    CreateEmitter 0, 1, EMITTER_CB_NONE
    PlaySoundEffectC SEQ_SE_DP_W201
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
