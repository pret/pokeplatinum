#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, stockpile_spa
    CreateEmitter 0, 0, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 1, 1, BATTLE_COLOR_WHITE, 16
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W025
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 160, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 10
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 10
    EndLoop
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
