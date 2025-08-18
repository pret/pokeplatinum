#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 151
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -20
    SwitchBg 23, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_MOVE
    WaitForBgSwitch
    PlayLoopedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT, 2, 4
    CreateEmitter 0, 0, 3
    CallFunc 36, 5, 1, 0, 1, 4, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_LEFT
    CallFunc 52, 3, 3, 24, 258
    WaitForAnimTasks
    CallFunc 52, 3, 3, -24, 258
    CreateEmitter 0, 1, 4
    Delay 31
    PlayPannedSoundEffect SEQ_SE_DP_W127, BATTLE_SOUND_PAN_RIGHT
    Delay 4
    CallFunc 34, 6, 8, 0, 1, 32631, 14, 0
    CallFunc 36, 5, 1, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -20
    RestoreBg 23, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_STOP
    WaitForBgSwitch
    End
