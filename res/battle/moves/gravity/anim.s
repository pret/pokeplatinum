#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, gravity_spa
    Delay 10
    PlaySoundEffectL SEQ_SE_DP_W356
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    Delay 10
    StopSoundEffect SEQ_SE_DP_W356
    PlaySoundEffectC SEQ_SE_DP_205
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_1, 100, 100, 100, 60, 100, HOLD_F(30) | CYCLES(1), SCALE_F(10) | RESTORE_F(10)
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_1, 100, 100, 100, 60, 100, HOLD_F(30) | CYCLES(1), SCALE_F(10) | RESTORE_F(10)
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_2, 100, 100, 100, 60, 100, HOLD_F(30) | CYCLES(1), SCALE_F(10) | RESTORE_F(10)
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_2, 100, 100, 100, 60, 100, HOLD_F(30) | CYCLES(1), SCALE_F(10) | RESTORE_F(10)
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
