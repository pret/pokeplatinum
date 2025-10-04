#include "macros/btlanimcmd.inc"

L_0:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 0
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    Func_Shake -20, 0, 1, 10, BATTLE_ANIM_POKEMON_SPRITE(0)
    Func_Shake 20, 0, 1, 10, BATTLE_ANIM_POKEMON_SPRITE(1)
    PlayLoopedSoundEffectR SEQ_SE_DP_W207, 2, 3
    Delay 10
    PlaySoundEffectL SEQ_SE_DP_W043
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End
