#include "macros/btlanimcmd.inc"

.data

L_0:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    PlayPannedSoundEffect SEQ_SE_DP_W107, BATTLE_SOUND_PAN_LEFT
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Func_AlphaFadePokemonSprite BATTLE_ANIM_MON_SPRITE_F(0), 16, 0, 0, 16, 8
    Delay 1
    Func_HideBattler BATTLE_ANIM_ATTACKER, 1
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    End
