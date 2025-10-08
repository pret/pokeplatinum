#include "macros/btlanimcmd.inc"

.data

L_0:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    SwitchBg 24, BATTLE_BG_SWITCH_MODE_FADE
    WaitForPartialBgSwitch
    Func_ScrollSwitchedBg 130
    WaitForBgSwitch
    Delay 45
    Func_Nightmare TRUE
    PlayLoopedSoundEffect SEQ_SE_DP_W171, BATTLE_SOUND_PAN_LEFT, 2, 4
    Delay 15
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 15
    SetPokemonSpriteVisible 0, 0
    Delay 30
    RestoreBg 24, BATTLE_BG_SWITCH_MODE_FADE
    WaitForAnimTasks
    WaitForBgSwitch
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    FreePokemonSpriteManager
    End
