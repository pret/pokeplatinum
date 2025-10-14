#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, aqua_tail_spa
    Delay 1
    PlaySoundEffectL SEQ_SE_DP_W057
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    BeginLoop 1
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 8, 2
    Delay 2
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -8, 2
    Delay 2
    EndLoop
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_0, 30, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_ATTACKER
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_1, 30, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_ATTACKER_PARTNER
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 3
    Delay 25
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_0, FALSE
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_1, FALSE
    PlaySoundEffectR SEQ_SE_DP_W291
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
