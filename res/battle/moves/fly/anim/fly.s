#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 49
    LoadParticleResource 1, 357
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    SwitchBg 55, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    PlayPannedSoundEffect SEQ_SE_DP_W327, BATTLE_SOUND_PAN_LEFT
    WaitForBgSwitch
    CreateEmitter 1, 1, 3
    CreateEmitter 1, 3, 3
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W019, BATTLE_SOUND_PAN_LEFT
    CallFunc 40, 2, 2, 1
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    RestoreBg 55, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

L_2:
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -32
    SwitchBg 55, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    PlayPannedSoundEffect SEQ_SE_DP_W327, BATTLE_SOUND_PAN_RIGHT
    WaitForBgSwitch
    CreateEmitter 0, 3, 3
    CallFunc 73, 5, 0, 1, 0, 10, 4
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W019, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 10
    CreateEmitter 0, 7, 4
    CreateEmitter 0, 8, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    CallFunc 40, 2, 2, 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -32
    RestoreBg 55, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
