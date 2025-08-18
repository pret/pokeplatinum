#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 418
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_W057, BATTLE_SOUND_PAN_LEFT
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    BeginLoop 1
    CallFunc 57, 4, 2, 0, 8, 258
    Delay 2
    CallFunc 57, 4, 2, 0, -8, 258
    Delay 2
    EndLoop
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    CallFunc 75, 5, 0, 30, 3, 0, 0
    CallFunc 75, 5, 1, 30, 3, 0, 2
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 3
    Delay 25
    SetPokemonSpriteVisible 0, 0
    SetPokemonSpriteVisible 1, 0
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 6, 264
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
