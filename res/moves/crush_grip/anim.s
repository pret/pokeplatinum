#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, crush_grip_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W462, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    JumpIfContest L_1
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    End

L_1:
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 5
    Delay 6
    PlaySoundEffectR SEQ_SE_DP_W173C
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 100, 100, 70, 100, HOLD_F(20) | CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    Delay 5
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 7
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 8
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 5
    Delay 6
    PlaySoundEffectR SEQ_SE_DP_W173C
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 100, 100, 70, 100, HOLD_F(20) | CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    Delay 5
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 7
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 8
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 5
    Delay 6
    PlaySoundEffectR SEQ_SE_DP_W173C
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 100, 100, 70, 100, HOLD_F(20) | CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    Delay 5
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 7
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 8
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
