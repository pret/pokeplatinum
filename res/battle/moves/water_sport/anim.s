#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, water_sport_spa
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 110, 100, 80, 100, HOLD_F(5) | CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    WaitForAnimTasks
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 100, 100, 120, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    WaitForAnimTasks
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W057
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 110, 100, 80, 100, HOLD_F(4) | CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    WaitForAnimTasks
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 100, 100, 120, 100, CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    WaitForAnimTasks
    EndLoop
    PlaySoundEffectL SEQ_SE_DP_W057
    PlayDelayedSoundEffectC SEQ_SE_DP_NAMI, 15
    Delay 10
    CreateEmitter 0, 0, 4
    Delay 10
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
