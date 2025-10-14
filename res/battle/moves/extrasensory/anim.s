#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, extrasensory_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W020, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    LoadPokemonSpriteIntoBg BATTLER_ROLE_DEFENDER, FALSE
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 2, BATTLE_COLOR_TEAL_GREEN, 10, 
    Func_Extrasensory
    BeginLoop 3
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_SHUSHU, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 16
    EndLoop
    Delay 40
    PlaySoundEffectL SEQ_SE_DP_W043
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 2, 0, 4
    Func_ScalePokemonSprite BATTLER_ROLE_ATTACKER, 8, 10, 15, 10, 1, SCALE_F(9) | RESTORE_F(9), BATTLE_ANIM_MON_SPRITE_0
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    RemovePokemonSpriteFromBg 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
