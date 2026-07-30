#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, protect_spa
    PlaySoundEffectL SEQ_SE_DP_W115
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
