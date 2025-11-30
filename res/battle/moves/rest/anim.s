#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rest_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    PlayLoopedSoundEffectL SEQ_SE_DP_W173B, 20, 1
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
