#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, swords_dance_spa
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    PlaySoundEffectL SEQ_SE_DP_SHUSHU
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
