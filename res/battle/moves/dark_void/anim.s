#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, dark_void_spa
    LoadParticleResource 1, dark_void_spa
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -1
    SwitchBg 44, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_2:
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 13, 0, 0, 0
    SetExtraParams 1, 0, -1720, 0
    CreateEmitter 0, 4, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 13, 0, 0, 0
    SetExtraParams 1, 0, -860, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 13, 0, 0, 0
    SetExtraParams 1, 0, -1720, 0
    PlaySoundEffectR SEQ_SE_DP_W464
    SetCameraProjection 1, 0
    CreateEmitter 1, 1, EMITTER_CB_GENERIC
    SetExtraParams 2, 2, 13, 0, 0, 0
    SetExtraParams 1, -600, -4500, -600
    CreateEmitter 1, 2, EMITTER_CB_GENERIC
    SetExtraParams 2, 2, 13, 0, 0, 0
    SetExtraParams 1, -600, -4500, -600
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, 4, 1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER, 0, 4, 1
    Delay 2
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, 4, 1
    Delay 1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER, 0, 4, 1
    Delay 1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, 8, 1
    Delay 1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER, 0, 8, 1
    Delay 2
    Delay 5
    PlayDelayedSoundEffectR SEQ_SE_DP_290, 15
    BeginLoop 16
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, 4, 1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER, 0, 4, 1
    Delay 1
    EndLoop
    Delay 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    RestoreBg 44, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, -80, 1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER, 0, -80, 1
    End

L_1:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Func_DarkVoid BATTLE_ANIM_MON_SPRITE_0, 80, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_DEFENDER, 1
    Func_DarkVoid BATTLE_ANIM_MON_SPRITE_1, 80, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_DEFENDER_PARTNER, 1
    Delay 1
    Func_HideBattler BATTLE_ANIM_DEFENDER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE
    PlaySoundEffectR SEQ_SE_DP_W464
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 13, 0, 0, 0
    SetExtraParams 1, 0, -1720, 0
    CreateEmitter 0, 4, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 13, 0, 0, 0
    SetExtraParams 1, 0, -860, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 13, 0, 0, 0
    SetExtraParams 1, 0, -1720, 0
    CreateEmitter 1, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 13, 0, 0, 0
    SetExtraParams 1, 0, -1720, 0
    CreateEmitter 1, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 13, 0, 0, 0
    SetExtraParams 1, 0, -1720, 0
    PlayDelayedSoundEffectR SEQ_SE_DP_290, 35
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    Delay 1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    RestoreBg 44, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    Func_HideBattler BATTLE_ANIM_DEFENDER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE
    End
