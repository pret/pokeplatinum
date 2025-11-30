#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, karate_chop_spa
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_HURU
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
