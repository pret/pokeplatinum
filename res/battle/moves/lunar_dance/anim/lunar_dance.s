#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, lunar_dance_spa
    LoadParticleResource 1, lunar_dance_spa
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SwitchBg 42, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Delay 1
    Func_SetPokemonSpritePriority 0, 81, 3, 0, 0
    Func_SetPokemonSpritePriority 1, 80, 3, 0, 2
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_W461, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 1, 1, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 1, 2, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    Func_FadePokemonSprite 2, 0, 1, 0, 10, 13311
    Delay 20
    Func_FadePokemonSprite 2, 0, 1, 10, 0, 13311
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    RestoreBg 42, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

L_2:
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SwitchBg 42, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    LoadParticleResource 0, lunar_dance_spa
    LoadParticleResource 1, lunar_dance_spa
    PlayPannedSoundEffect SEQ_SE_DP_W461, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 20
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    RestoreBg 42, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
