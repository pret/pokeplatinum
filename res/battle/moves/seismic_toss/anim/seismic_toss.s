#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 99
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 26
    SwitchBg 51, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlayPannedSoundEffect SEQ_SE_DP_W327, 0
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 22
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 11
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 7
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 4
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -6
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -13
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -21
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -34
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    Func_Shake 2, 0, 1, 8, 264
    Func_ShakeBg 0, 5, 1, 3, 0
    Delay 10
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -34
    RestoreBg 51, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    WaitForBgSwitch
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
