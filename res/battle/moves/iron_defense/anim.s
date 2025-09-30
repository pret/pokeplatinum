#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 12, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 12, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 12, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 12, 0, BATTLE_COLOR_WHITE
    PlayLoopedSoundEffect SEQ_SE_DP_W231, BATTLE_SOUND_PAN_LEFT, 8, 2
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 1
    Func_StatChangeMetal 0
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    FreePokemonSpriteManager
    WaitForAnimTasks
    End
