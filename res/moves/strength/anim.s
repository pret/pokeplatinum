#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, comet_punch_spa
    Func_Strength 70, 120, 10, 5
    PlaySoundEffectL SEQ_SE_DP_W036_sseq
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W025B_sseq
    Func_Submission 3, 10, BATTLE_ANIM_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    WaitForAnimTasks
    End
