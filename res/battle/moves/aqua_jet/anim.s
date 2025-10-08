#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, aqua_jet_spa
    PlaySoundEffectL SEQ_SE_DP_W029
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 28, -16, 2
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    PlaySoundEffectL SEQ_SE_DP_W291
    CreateEmitterEx 0, 0, 3, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(2) | MAX_F(3)
    CreateEmitterEx 0, 1, 4, 3
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(2) | MAX_F(3)
    CreateEmitterEx 0, 2, 5, 3
    Func_MoveEmitterA2BLinear 2, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(2) | MAX_F(3)
    Delay 5
    PlaySoundEffectC SEQ_SE_DP_W291
    CreateEmitterEx 0, 3, 3, 3
    Func_MoveEmitterA2BLinear 3, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(5) | MAX_F(6)
    CreateEmitterEx 0, 4, 4, 3
    Func_MoveEmitterA2BLinear 4, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(5) | MAX_F(6)
    CreateEmitterEx 0, 5, 5, 3
    Func_MoveEmitterA2BLinear 5, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(5) | MAX_F(6)
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W291
    CreateEmitterEx 0, 6, 3, 3
    Func_MoveEmitterA2BLinear 6, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(7) | MAX_F(8)
    CreateEmitterEx 0, 7, 4, 3
    Func_MoveEmitterA2BLinear 7, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(7) | MAX_F(8)
    CreateEmitterEx 0, 8, 5, 3
    Func_MoveEmitterA2BLinear 8, 0, 0, 0, 8, 64, EMITTER_ANIMATION_MODE_ATK_TO_DEF, SKIP_F(7) | MAX_F(8)
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    End
