#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hammer_arm_spa
    PlaySoundEffectR SEQ_SE_DP_W011
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 100, 100, 70, 100, HOLD_F(20) | CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    PlaySoundEffectR SEQ_SE_DP_W070
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
