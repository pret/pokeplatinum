#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mimic_spa
    JumpIfContest L_1
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    LoadPokemonSpriteDummyResources 2
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 2
    PlaySoundEffectR SEQ_SE_DP_W107
    Func_Mimic
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 1, 1, 0, 0
    Delay 25
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 12
    PlaySoundEffectL SEQ_SE_DP_061
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    FreePokemonSpriteManager
    End

L_1:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    LoadPokemonSpriteDummyResources 2
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 2
    PlaySoundEffectR SEQ_SE_DP_W107
    Func_Mimic
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 1, 1, 0, 0
    Delay 25
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 12
    PlaySoundEffectL SEQ_SE_DP_061
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    FreePokemonSpriteManager
    End
