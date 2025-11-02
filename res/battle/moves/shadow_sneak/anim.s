#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, shadow_sneak_spa
    Func_SetBgGrayscale TRUE
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    LoadPokemonSpriteDummyResources 2
    LoadPokemonSpriteDummyResources 3
    AddPokemonSprite BATTLER_ROLE_PLAYER_1, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ENEMY_1, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    AddPokemonSprite BATTLER_ROLE_PLAYER_2, FALSE, BATTLE_ANIM_MON_SPRITE_2, 2
    AddPokemonSprite BATTLER_ROLE_ENEMY_2, FALSE, BATTLE_ANIM_MON_SPRITE_3, 3
    Func_RenderPokemonSprites 45
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    Delay 2
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_161, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_3
    PlaySoundEffectR SEQ_SE_DP_186
    CreateEmitter 0, 1, 4
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_BLACK, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    Func_SetBgGrayscale FALSE
    End
