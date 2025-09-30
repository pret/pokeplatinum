#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, aqua_tail_spa
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_W057, BATTLE_SOUND_PAN_LEFT
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    BeginLoop 1
    Func_MoveBattler 258, 0, 8, 2
    Delay 2
    Func_MoveBattler 258, 0, -8, 2
    Delay 2
    EndLoop
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Func_SetPokemonSpritePriority 0, 30, 3, 0, 0
    Func_SetPokemonSpritePriority 1, 30, 3, 0, 2
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 3
    Delay 25
    SetPokemonSpriteVisible 0, 0
    SetPokemonSpriteVisible 1, 0
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
