#include "macros/btlanimcmd.inc"

L_0:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    LoadPokemonSpriteDummyResources 2
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 2
    BtlAnimCmd_082 2, 1, 2
    LoadPokemonSpriteDummyResources 3
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_3, 3
    BtlAnimCmd_082 3, 1, 3
    Func_Memento
    PlaySoundEffectL SEQ_SE_DP_W060
    Delay 24
    PlaySoundEffectR SEQ_SE_DP_W060B
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    BtlAnimCmd_083 1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    BtlAnimCmd_083 1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_3
    End
