#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, cosmic_power_spa
    JumpIfFriendlyFire L_1
    Func_FadeBattlerSprite 4, 0, 1, 0, 16, 60
    Func_FadeBattlerSprite 8, 0, 1, 0, 16, 60
    Func_FadeBattlerSprite 16, 0, 1, 0, 16, 60
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W322, 0
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SwitchBg 56, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 4, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    RestoreBg 56, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

L_1:
    JumpIfBattlerSide 0, L_2, L_3
    End

L_2:
    Func_FadeBattlerSprite 4, 0, 1, 0, 16, 60
    Func_FadeBattlerSprite 2056, 0, 1, 0, 16, 60
    Func_FadeBattlerSprite 2064, 0, 1, 0, 16, 60
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W322, 0
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SwitchBg 56, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 4, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    RestoreBg 56, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

L_3:
    Func_FadeBattlerSprite 4, 0, 1, 0, 16, 60
    Func_FadeBattlerSprite 2050, 0, 1, 0, 16, 60
    Func_FadeBattlerSprite 2052, 0, 1, 0, 16, 60
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W322, 0
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SwitchBg 56, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 4, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    RestoreBg 56, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
