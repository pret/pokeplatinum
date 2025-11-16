#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, attack_order_spa
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayLoopedSoundEffectR SEQ_SE_DP_W456, 6, 8
    Delay 28
    PlaySoundEffectR SEQ_SE_DP_W109
    Delay 3
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 20
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 24
    Func_Shake 2, 0, 1, 16, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
