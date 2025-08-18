#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    Delay 2
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    BtlAnimCmd_082 1, 1, 0
    CallFunc 34, 5, 2, 0, 3, 32767, 10
    CallFunc 20, 0
    LoadPokemonSpriteIntoBg 1, 0
    PlayPannedSoundEffect SEQ_SE_DP_W060, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    RemovePokemonSpriteFromBg 0
    FreePokemonSpriteManager
    BtlAnimCmd_083 1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
