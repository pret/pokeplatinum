#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mud_sport_spa
    PlaySoundEffectL SEQ_SE_DP_W091
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    WaitForAnimTasks
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    PlaySoundEffectL SEQ_SE_DP_W253
    CreateEmitter 0, 1, 3
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 160, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    WaitForAnimTasks
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W253
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    WaitForAnimTasks
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 160, 100, CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    PlaySoundEffectL SEQ_SE_DP_W253
    WaitForAnimTasks
    EndLoop
    Delay 20
    PlayLoopedSoundEffectL SEQ_SE_DP_W145, 4, 9
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 6000, -2000, 4000
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 12000, 0, -4000
    Delay 3
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -10000, -1000, -4000
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -6000, 1000, 4000
    Delay 5
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 4000, -1000, 3000
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 2000, -1500, 3000
    Delay 4
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -5000, 2000, -4000
    PlaySoundEffectL SEQ_SE_DP_W145B
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
