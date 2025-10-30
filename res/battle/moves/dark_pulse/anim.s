#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, dark_pulse_spa
    Delay 1
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W399, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_0, 30, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_ATTACKER
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_1, 30, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_ATTACKER_PARTNER
    Delay 1
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Func_SetBgGrayscale TRUE
    Delay 25
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_0, FALSE
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_1, FALSE
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_DARK_PURPLE, 14, 0
    WaitForAnimTasks
    Func_SetBgGrayscale FALSE
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
