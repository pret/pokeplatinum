#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, psycho_cut_spa
    PlaySoundEffectL SEQ_SE_DP_020
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    Delay 45
    PlayLoopedSoundEffectC SEQ_SE_DP_HURU, 2, 9
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    JumpIfContest L_3
    CreateEmitter 0, 2, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 20, 64
    Delay 19
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    CreateEmitter 0, 4, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 20, 64
    Delay 19
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 3, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 20, 64
    Delay 19
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
