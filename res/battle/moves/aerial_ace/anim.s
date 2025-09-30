#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, aerial_ace_spa
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_BLACK
    Delay 15
    PlaySoundEffectR SEQ_SE_DP_W013B
    PlayDelayedSoundEffectR SEQ_SE_DP_W013, 10
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 2, 0, 4
    Func_QuickAttack
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Delay 10
    SetPokemonSpriteVisible BATTLE_ANIM_MON_SPRITE_4, FALSE
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
