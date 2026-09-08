#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, pain_split_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    PlayDelayedSoundEffectL SEQ_SE_DP_W025B_sseq, 1
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 5
    PlayDelayedSoundEffectL SEQ_SE_DP_W025B_sseq, 10
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 15
    PlayDelayedSoundEffectL SEQ_SE_DP_W025B_sseq, 20
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B_sseq, 25
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
