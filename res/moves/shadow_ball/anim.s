#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, shadow_ball_spa
    CreateEmitter 0, 4, EMITTER_CB_NONE
    CreateEmitter 0, 0, EMITTER_CB_NONE
    CreateEmitter 0, 1, EMITTER_CB_NONE
    PlayLoopedSoundEffectC SEQ_SE_DP_W028, 2, 12
    Delay 55
    CreateEmitter 0, 2, EMITTER_CB_NONE
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 8, 255, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(4)
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_DARK_PURPLE, 14, 0
    PlaySoundEffectR SEQ_SE_DP_480
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
