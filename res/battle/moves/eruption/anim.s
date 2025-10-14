#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, eruption_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 1, 3
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    PlaySoundEffectL SEQ_SE_DP_W153
    WaitForAnimTasks
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 160, 100, CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    PlayDelayedSoundEffectL SEQ_SE_DP_W153, 10
    WaitForAnimTasks
    BeginLoop 1
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 1, 3
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    WaitForAnimTasks
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 160, 100, CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    WaitForAnimTasks
    EndLoop
    Delay 15
    PlaySoundEffectR SEQ_SE_DP_W088
    Func_ShakeBg 0, 5, 0, 4, 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 3, BATTLE_COLOR_DARK_RED2, 14, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 3, BATTLE_COLOR_DARK_RED2, 14, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -6000, 1000, 4000
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W088
    Func_Shake 3, 0, 1, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 3, 0, 1, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 6000, -2000, 4000
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W088
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 12000, 0, -4000
    Delay 3
    PlaySoundEffectR SEQ_SE_DP_W088
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -10000, -1000, -4000
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W088
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -2000, -2000, 4000
    Delay 4
    PlaySoundEffectR SEQ_SE_DP_W088
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 4000, -3000, 4000
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W088
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -5000, -4000, -4000
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    End
