#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, facade_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_W207, 8, 6
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 8
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 8
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 0
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 8
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 8
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 10, 0
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 8
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_030
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
