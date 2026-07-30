#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, imprison_spa
    PlaySoundEffectR SEQ_SE_DP_050
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    BeginLoop 1
    Delay 12
    PlaySoundEffectR SEQ_SE_DP_W030
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
