#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, natural_gift_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    PlaySoundEffectL SEQ_SE_PL_W363_sseq_1
    PlayDelayedSoundEffectL SEQ_SE_DP_REAPOKE_sseq, 40
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
