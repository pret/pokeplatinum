#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, uproar_spa
    PlayLoopedSoundEffectL SEQ_SE_DP_W253, 29, 3
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    WaitForAnimTasks
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    WaitForAnimTasks
    BeginLoop 2
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    WaitForAnimTasks
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
