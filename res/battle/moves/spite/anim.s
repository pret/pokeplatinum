#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    Delay 2
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    BtlAnimCmd_082 1, 1, 0
    Func_FadeBattlerSprite 2, 0, 3, 32767, 10
    Func_Spite
    LoadPokemonSpriteIntoBg 1, 0
    PlayPannedSoundEffect SEQ_SE_DP_W060, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    RemovePokemonSpriteFromBg 0
    FreePokemonSpriteManager
    BtlAnimCmd_083 1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
