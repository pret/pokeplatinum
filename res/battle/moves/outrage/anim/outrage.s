#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 218
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Delay 1
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 28, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlayLoopedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT, 4, 2
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Func_FadeBattlerSprite 8, 0, 3, 31, 10, 10
    Func_Shake 3, 0, 0, 13, 264
    BeginLoop 2
    Func_FadeBg 0, 0, 0, 10, 31
    Delay 10
    Func_FadeBg 0, 0, 10, 0, 31
    Delay 10
    EndLoop
    Func_FadeBg 0, 0, 0, 10, 31
    Delay 10
    Func_FadeBg 0, 0, 10, 0, 31
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W053B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 28, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    End
