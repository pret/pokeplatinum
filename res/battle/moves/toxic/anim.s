#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, toxic_spa
    LoadParticleResource 1, toxic_spa
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Func_SetPokemonSpritePriority 0, 81, 3, 0, 1
    Func_SetPokemonSpritePriority 1, 80, 3, 0, 3
    Delay 1
    Func_HideBattler 8, 1
    Func_HideBattler 16, 1
    Delay 1
    CreateEmitter 1, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_161, BATTLE_SOUND_PAN_RIGHT
    Func_FadePokemonSprite 8, 0, 1, 0, 10, 31764
    Delay 8
    PlayLoopedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 2, 7
    Delay 12
    Func_FadePokemonSprite 8, 0, 1, 10, 0, 31764
    Func_HideBattler 8, 0
    Func_HideBattler 16, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    Func_HideBattler 8, 0
    Func_HideBattler 16, 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    End
