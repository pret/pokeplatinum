#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, beat_up_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W233B
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
