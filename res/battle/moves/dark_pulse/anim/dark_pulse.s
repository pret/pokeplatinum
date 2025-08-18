#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 416
    Delay 1
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W399, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    CallFunc 75, 5, 0, 30, 3, 0, 0
    CallFunc 75, 5, 1, 30, 3, 0, 2
    Delay 1
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CallFunc 74, 1, 1
    Delay 25
    SetPokemonSpriteVisible 0, 0
    SetPokemonSpriteVisible 1, 0
    CallFunc 36, 5, 1, 0, 1, 6, 264
    CallFunc 34, 6, 8, 0, 1, 8296, 14, 0
    WaitForAnimTasks
    CallFunc 74, 1, 0
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
