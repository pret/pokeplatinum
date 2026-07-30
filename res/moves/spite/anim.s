#include "macros/btlanimcmd.inc"

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    Delay 2
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    BtlAnimCmd_082 1, 1, 0
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 3, BATTLE_COLOR_WHITE, 10
    Func_Spite
    LoadPokemonSpriteIntoBg BATTLER_ROLE_DEFENDER, FALSE
    PlaySoundEffectL SEQ_SE_DP_W060
    WaitForAnimTasks
    RemovePokemonSpriteFromBg 0
    FreePokemonSpriteManager
    BtlAnimCmd_083 1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
