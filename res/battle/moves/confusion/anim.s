#include "macros/btlanimcmd.inc"

.data

L_0:
    SwitchBg 20, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Func_Shake 2, 0, 1, 2, 258
    Func_FadeBattlerSprite 2, 0, 1, 32767, 4
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_480, BATTLE_SOUND_PAN_RIGHT
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    CallFunc 11, 0
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    RestoreBg 20, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
