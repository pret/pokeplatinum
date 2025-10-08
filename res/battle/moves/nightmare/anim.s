#include "macros/btlanimcmd.inc"

L_0:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    SwitchBg 24, BATTLE_BG_SWITCH_MODE_FADE
    WaitForPartialBgSwitch
    Func_ScrollSwitchedBg 130
    WaitForBgSwitch
    Delay 45
    Func_Nightmare FALSE
    PlayLoopedSoundEffectR SEQ_SE_DP_W171, 2, 4
    Delay 15
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 15
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_0, FALSE
    Delay 30
    RestoreBg 24, BATTLE_BG_SWITCH_MODE_FADE
    WaitForAnimTasks
    WaitForBgSwitch
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    FreePokemonSpriteManager
    End
