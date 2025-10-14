#include "macros/btlanimcmd.inc"

L_0:
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    LoadParticleResource 0, sweet_scent_spa
    PlaySoundEffectC SEQ_SE_DP_W230
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 3, 0, 0, 0
    BtlAnimCmd_055 1, -2000, 8000, 0
    CreateEmitter 0, 2, 0
    CreateEmitter 0, 4, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_LIGHT_RED, 12, 
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 2, BATTLE_COLOR_LIGHT_RED, 12, 
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, sweet_scent_spa
    PlaySoundEffectC SEQ_SE_DP_W230
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 3, 0, 0, 0
    BtlAnimCmd_055 1, -2000, 8000, 0
    CreateEmitter 0, 3, 0
    CreateEmitter 0, 4, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_LIGHT_RED, 12, 
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 2, BATTLE_COLOR_LIGHT_RED, 12, 
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
