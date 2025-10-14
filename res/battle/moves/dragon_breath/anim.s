#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, dragon_breath_spa
    PlayLoopedSoundEffectC SEQ_SE_DP_400, 3, 6
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_1
    End

L_1:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 32, 1, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 32, 1, 0, 0
    PlaySoundEffectR SEQ_SE_DP_W172
    Delay 15
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_RED, 12, 
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End

L_2:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 8, 1, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 8, 1, 0, 0
    WaitForLRX
    PlaySoundEffectR SEQ_SE_DP_W172
    Delay 15
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_RED, 12, 
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
