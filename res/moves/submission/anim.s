#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, submission_spa
    LoadParticleResource 1, comet_punch_spa
    Func_Submission 7, 10, BATTLE_ANIM_ATTACKER
    Func_Submission 7, 10, BATTLE_ANIM_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayDelayedSoundEffectL SEQ_SE_DP_W104_sseq, 1
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 10
    PlayDelayedSoundEffectL SEQ_SE_DP_W104_sseq, 10
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 20
    PlayDelayedSoundEffectL SEQ_SE_DP_W104_sseq, 20
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 30
    PlayDelayedSoundEffectL SEQ_SE_DP_W104_sseq, 30
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 40
    PlayDelayedSoundEffectL SEQ_SE_DP_W104_sseq, 40
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 50
    PlayDelayedSoundEffectL SEQ_SE_DP_W104_sseq, 50
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 60
    PlayDelayedSoundEffectL SEQ_SE_DP_W104_sseq, 60
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 70
    PlayDelayedSoundEffectL SEQ_SE_DP_W104_sseq, 70
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 80
    BeginLoop 5
    Delay 8
    CreateEmitter 1, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    End
