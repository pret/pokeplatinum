#include "macros/btlanimcmd.inc"

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    BtlAnimCmd_082 2, 1, 1
    Func_NightShadeAttacker
    PlaySoundEffectL SEQ_SE_DP_W109
    Delay 16
    PlaySoundEffectR SEQ_SE_DP_201
    Func_NightShadeDefender
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
