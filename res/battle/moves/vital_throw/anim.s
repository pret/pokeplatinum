#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, vital_throw_spa
    Func_VitalThrow
    PlayLoopedSoundEffectL SEQ_SE_DP_W233, 22, 3
    Delay 66
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_030
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
