#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 293
    PlayPannedSoundEffect SEQ_SE_DP_W025, BATTLE_SOUND_PAN_LEFT
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    CallFunc 56, 2, 0, 0
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    WaitForAnimTasks
    Delay 30
    Delay 10
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 3, BATTLE_BG_SWITCH_MODE_FADE
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    CallFunc 57, 4, 2, 16, -8, 258
    Delay 2
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 8, 0, 1, 4, 264
    CallFunc 57, 4, 2, -16, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 3, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    End
