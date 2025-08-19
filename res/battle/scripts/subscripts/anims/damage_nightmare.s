#include "macros/btlanimcmd.inc"

.data

L_0:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    SwitchBg 24, BATTLE_BG_SWITCH_MODE_FADE
    WaitForPartialBgSwitch
    CallFunc 76, 1, 130
    WaitForBgSwitch
    Delay 45
    CallFunc 26, 1, 1
    PlayLoopedSoundEffect SEQ_SE_DP_W171, BATTLE_SOUND_PAN_LEFT, 2, 4
    Delay 15
    CallFunc 36, 5, 2, 0, 1, 6, 264
    Delay 15
    SetPokemonSpriteVisible 0, 0
    Delay 30
    RestoreBg 24, BATTLE_BG_SWITCH_MODE_FADE
    WaitForAnimTasks
    WaitForBgSwitch
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    FreePokemonSpriteManager
    End
