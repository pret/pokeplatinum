#include "macros/btlanimcmd.inc"

L_0:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 8
    SwitchBg 52, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 10, 0
    Delay 10
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    PlayLoopedSoundEffectR SEQ_SE_DP_480, 4, 2
    Func_Confusion
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 8
    RestoreBg 52, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
