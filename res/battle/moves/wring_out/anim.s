#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, wring_out_spa
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    PlayLoopedSoundEffectR SEQ_SE_DP_021, 10, 5
    BeginLoop 3
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 80, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 10
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 120, 100, 80, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 10
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
