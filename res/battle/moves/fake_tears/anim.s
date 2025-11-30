#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fake_tears_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_Flail FLAIL_MODE_ATTACKER
    PlayLoopedSoundEffectL SEQ_SE_DP_W039, 8, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
