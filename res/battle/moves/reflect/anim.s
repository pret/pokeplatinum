#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, reflect_spa
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER_SIDE
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER_SIDE
    PlaySoundEffectL SEQ_SE_DP_W115
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
