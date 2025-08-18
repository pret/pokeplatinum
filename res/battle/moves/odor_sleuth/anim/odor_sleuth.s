#include "macros/btlanimcmd.inc"

.data

L_0:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 0
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    CallFunc 36, 5, -20, 0, 1, 10, 514
    CallFunc 36, 5, 20, 0, 1, 10, 516
    PlayLoopedSoundEffect SEQ_SE_DP_W207, BATTLE_SOUND_PAN_RIGHT, 2, 3
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W043, BATTLE_SOUND_PAN_LEFT
    CallFunc 36, 5, 4, 0, 1, 2, 258
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End
