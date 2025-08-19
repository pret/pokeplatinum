#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 481
    LoadParticleResource 1, 481
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -1
    SwitchBg 44, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    JumpIfBattlerSide 0, L_1, L_2
    End

L_2:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -860, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    PlayPannedSoundEffect SEQ_SE_DP_W464, BATTLE_SOUND_PAN_RIGHT
    SetCameraProjection 1, 0
    CreateEmitter 1, 1, 17
    BtlAnimCmd_055 6, 2, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, -600, -4500, -600
    CreateEmitter 1, 2, 17
    BtlAnimCmd_055 6, 2, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, -600, -4500, -600
    CallFunc 57, 4, 1, 0, 4, 264
    CallFunc 57, 4, 1, 0, 4, 272
    Delay 2
    CallFunc 57, 4, 1, 0, 4, 264
    Delay 1
    CallFunc 57, 4, 1, 0, 4, 272
    Delay 1
    CallFunc 57, 4, 1, 0, 8, 264
    Delay 1
    CallFunc 57, 4, 1, 0, 8, 272
    Delay 2
    Delay 5
    PlayDelayedSoundEffect SEQ_SE_DP_290, BATTLE_SOUND_PAN_RIGHT, 15
    BeginLoop 16
    CallFunc 57, 4, 1, 0, 4, 264
    CallFunc 57, 4, 1, 0, 4, 272
    Delay 1
    EndLoop
    Delay 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    RestoreBg 44, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    CallFunc 57, 4, 1, 0, -80, 264
    CallFunc 57, 4, 1, 0, -80, 272
    End

L_1:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    CallFunc 75, 7, 0, 80, 3, 0, 1, 255, 1
    CallFunc 75, 7, 1, 80, 3, 0, 3, 255, 1
    Delay 1
    CallFunc 40, 2, 8, 1
    CallFunc 40, 2, 16, 1
    PlayPannedSoundEffect SEQ_SE_DP_W464, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -860, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 1, 1, 17
    BtlAnimCmd_055 6, 0, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 1, 2, 17
    BtlAnimCmd_055 6, 0, 2, 13, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    PlayDelayedSoundEffect SEQ_SE_DP_290, BATTLE_SOUND_PAN_RIGHT, 35
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    Delay 1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    RestoreBg 44, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    CallFunc 40, 2, 8, 0
    CallFunc 40, 2, 16, 0
    End
