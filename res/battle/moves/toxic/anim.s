#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, toxic_spa
    LoadParticleResource 1, toxic_spa
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_0, 81, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_DEFENDER
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_1, 80, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_DEFENDER_PARTNER
    Delay 1
    Func_HideBattler BATTLE_ANIM_DEFENDER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE
    Delay 1
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -1720, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    PlaySoundEffectR SEQ_SE_DP_161
    Func_FadePokemonSprite BATTLE_ANIM_DEFENDER, 0, 1, 0, 10, BATTLE_COLOR_PURPLE
    Delay 8
    PlayLoopedSoundEffectR SEQ_SE_DP_W092D, 2, 7
    Delay 12
    Func_FadePokemonSprite BATTLE_ANIM_DEFENDER, 0, 1, 10, 0, BATTLE_COLOR_PURPLE
    Func_HideBattler BATTLE_ANIM_DEFENDER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_DEFENDER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    End
