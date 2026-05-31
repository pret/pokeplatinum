#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, disable_spa
    JumpIfContest L_1
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 0, -4128, 0, 0
    PlaySoundEffectL SEQ_SE_DP_081
    Delay 5
    Func_SetBgGrayscale TRUE
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_061
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Delay 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    Func_ScalePokemonSprite BATTLER_ROLE_DEFENDER, 8, 10, 12, 10, 1, SCALE_F(9) | RESTORE_F(9), BATTLE_ANIM_MON_SPRITE_0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_DARK_GRAY, 14, 0
    Func_FadePokemonSprite BATTLE_ANIM_ATTACKER, 0, 1, 14, 14, BATTLE_COLOR_DARK_GRAY
    WaitForAnimTasks
    Func_SetBgGrayscale FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_2:
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 4128, 6192, 0
    PlaySoundEffectL SEQ_SE_DP_081
    Delay 5
    Func_SetBgGrayscale TRUE
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_061
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Delay 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    Func_ScalePokemonSprite BATTLER_ROLE_DEFENDER, 8, 10, 12, 10, 1, SCALE_F(9) | RESTORE_F(9), BATTLE_ANIM_MON_SPRITE_0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_DARK_GRAY, 14, 0
    Func_FadePokemonSprite BATTLE_ANIM_ATTACKER, 0, 1, 14, 14, BATTLE_COLOR_DARK_GRAY
    WaitForAnimTasks
    Func_SetBgGrayscale FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_3:
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, -4128, 6192, 0
    PlaySoundEffectL SEQ_SE_DP_081
    Delay 5
    Func_SetBgGrayscale TRUE
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_061
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Delay 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    Func_ScalePokemonSprite BATTLER_ROLE_DEFENDER, 8, 10, 12, 10, 1, SCALE_F(9) | RESTORE_F(9), BATTLE_ANIM_MON_SPRITE_0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_DARK_GRAY, 14, 0
    Func_FadePokemonSprite BATTLE_ANIM_ATTACKER, 0, 1, 14, 14, BATTLE_COLOR_DARK_GRAY
    WaitForAnimTasks
    Func_SetBgGrayscale FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_1:
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, -4128, 6192, 0
    PlaySoundEffectL SEQ_SE_DP_081
    Delay 5
    Func_SetBgGrayscale TRUE
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_061
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Delay 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    Func_ScalePokemonSprite BATTLER_ROLE_DEFENDER, 8, 10, 12, 10, 1, SCALE_F(9) | RESTORE_F(9), BATTLE_ANIM_MON_SPRITE_0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_DARK_GRAY, 14, 0
    Func_FadePokemonSprite BATTLE_ANIM_ATTACKER, 0, 1, 14, 14, BATTLE_COLOR_DARK_GRAY
    WaitForAnimTasks
    Func_SetBgGrayscale FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End
