#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, brave_bird_spa
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SwitchBg 18, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 2, 0, 4
    Func_AlphaFadePokemonSprite BATTLE_ANIM_MON_SPRITE_F(0), 16, 0, 0, 16, 8
    Delay 1
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    WaitForAnimTasks
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_0, FALSE
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_4, FALSE
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W360C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    JumpIfContest L_1
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    End

L_2:
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 0, 3
    Delay 15
    PlaySoundEffectR SEQ_SE_DP_186
    Func_Shake 4, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 14, 0
    CreateEmitter 0, 8, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 9, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 6, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 7, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_0, TRUE
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_4, TRUE
    Func_AlphaFadePokemonSprite BATTLE_ANIM_MON_SPRITE_F(0), 0, 16, 16, 0, 8
    Delay 7
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    RestoreBg 18, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_1:
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 0, 3
    Delay 15
    PlaySoundEffectR SEQ_SE_DP_186
    Func_Shake 4, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 14, 0
    CreateEmitter 0, 8, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 9, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 6, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 7, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_0, TRUE
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_4, TRUE
    Func_AlphaFadePokemonSprite BATTLE_ANIM_MON_SPRITE_F(0), 0, 16, 16, 0, 8
    Delay 7
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    RestoreBg 18, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_3:
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 0, 3
    Delay 15
    PlaySoundEffectR SEQ_SE_DP_186
    Func_Shake 4, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 14, 0
    CreateEmitter 0, 8, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 9, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 6, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 7, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_0, TRUE
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_4, TRUE
    Func_AlphaFadePokemonSprite BATTLE_ANIM_MON_SPRITE_F(0), 0, 16, 16, 0, 8
    Delay 7
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    RestoreBg 18, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End
