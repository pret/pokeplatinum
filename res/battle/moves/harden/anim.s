#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, harden_spa
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 1
    CreateEmitter 0, 0, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_W231, 12, 2
    Func_StatChangeMetal STAT_CHANGE_MODE_ATTACKER
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    End
