#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 10, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_LEFT
    Delay 4
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    WaitForAnimTasks
    BtlAnimCmd_068 2
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -160, 4
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 160, 8
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -32, 4
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 32, 4
    WaitForAnimTasks
    End

L_2:
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 10, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_LEFT
    Delay 4
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    WaitForAnimTasks
    BtlAnimCmd_068 2
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 80, 4
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -80, 8
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 24, 4
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -24, 4
    WaitForAnimTasks
    End
    End
