#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    CallFunc 36, 5, 2, 0, 1, 2, 258
    CallFunc 34, 5, 2, 0, 1, 32767, 4
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W060, 0
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

L_2:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W060, 0
    Delay 10
    CallFunc 11, 0
    PlayPannedSoundEffect SEQ_SE_DP_480, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
