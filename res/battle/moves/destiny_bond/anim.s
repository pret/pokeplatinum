#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, destiny_bond_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 34, 26, 0, 0
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    PlaySoundEffectC SEQ_SE_DP_W060
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAnimTasks
    Delay 15
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 12, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_1, 0, 1, BATTLE_COLOR_WHITE, 12, 0
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_2, 0, 1, BATTLE_COLOR_WHITE, 12, 0
    PlaySoundEffectC SEQ_SE_DP_W171
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    PlaySoundEffectC SEQ_SE_DP_W060
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAnimTasks
    Delay 15
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 12, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_1, 0, 1, BATTLE_COLOR_WHITE, 12, 0
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_2, 0, 1, BATTLE_COLOR_WHITE, 12, 0
    PlaySoundEffectC SEQ_SE_DP_W171
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
