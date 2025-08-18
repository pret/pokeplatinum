#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 117
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SwitchBg 19, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_MOVE
    WaitForBgSwitch
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -2064, 0
    Delay 5
    CallFunc 68, 6, 3, 0, 1, 1, 0, 1
    CallFunc 34, 6, 8, 0, 1, 0, 15, 0
    CallFunc 33, 5, 2, -4, 0, 12, 32767
    PlayPannedSoundEffect SEQ_SE_DP_W161B, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    CallFunc 33, 5, 2, -4, 12, 0, 32767
    CallFunc 36, 5, 0, 1, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    RestoreBg 19, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_STOP
    WaitForBgSwitch
    End
