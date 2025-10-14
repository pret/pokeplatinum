#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, power_trick_spa
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 2, 1, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 1, 2, 1, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 1, 0, 0
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W379
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 10
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 10
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
