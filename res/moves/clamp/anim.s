#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, clamp_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_050_sseq
    Delay 10
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W011_sseq
    PlayDelayedSoundEffectR SEQ_SE_DP_030_sseq, 13
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
