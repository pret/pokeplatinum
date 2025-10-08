#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, comet_punch_spa
    Func_Strength 70, 120, 10, 5
    PlaySoundEffectL SEQ_SE_DP_W036
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W025B
    Func_Submission 3, 10, BATTLE_ANIM_DEFENDER
    CreateEmitter 0, 0, 4
    WaitForAnimTasks
    End
