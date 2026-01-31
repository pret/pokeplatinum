#include "macros/btlanimcmd.inc"

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
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_0, 81, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_ATTACKER
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_1, 80, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_ATTACKER_PARTNER
    Delay 1
    PlaySoundEffectL SEQ_SE_DP_W461
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 1, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -1720, 0
    CreateEmitter 1, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -1720, 0
    Func_FadePokemonSprite BATTLE_ANIM_ATTACKER, 0, 1, 0, 10, BATTLE_COLOR_LIGHT_YELLOW1
    Delay 20
    Func_FadePokemonSprite BATTLE_ANIM_ATTACKER, 0, 1, 10, 0, BATTLE_COLOR_LIGHT_YELLOW1
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
    PlaySoundEffectL SEQ_SE_DP_W461
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Delay 20
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
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
