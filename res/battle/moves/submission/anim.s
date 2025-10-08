#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, submission_spa
    LoadParticleResource 1, comet_punch_spa
    Func_Submission 7, 10, BATTLE_ANIM_ATTACKER
    Func_Submission 7, 10, BATTLE_ANIM_DEFENDER
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffectL SEQ_SE_DP_W104, 1
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 10
    PlayDelayedSoundEffectL SEQ_SE_DP_W104, 10
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 20
    PlayDelayedSoundEffectL SEQ_SE_DP_W104, 20
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 30
    PlayDelayedSoundEffectL SEQ_SE_DP_W104, 30
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 40
    PlayDelayedSoundEffectL SEQ_SE_DP_W104, 40
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 50
    PlayDelayedSoundEffectL SEQ_SE_DP_W104, 50
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 60
    PlayDelayedSoundEffectL SEQ_SE_DP_W104, 60
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 70
    PlayDelayedSoundEffectL SEQ_SE_DP_W104, 70
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 80
    BeginLoop 5
    Delay 8
    CreateEmitter 1, 0, 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    End
