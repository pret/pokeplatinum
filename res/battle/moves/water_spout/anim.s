#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, water_spout_spa
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 110, 100, 80, 100, HOLD_F(5) | CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 100, 100, 120, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_LEFT
    Delay 5
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 20
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W057, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 13, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 13, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
