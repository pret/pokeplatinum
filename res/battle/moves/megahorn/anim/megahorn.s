#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 241
    CallFunc 47, 0
    PlayPannedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT
    Delay 10
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 2, BATTLE_BG_SWITCH_MODE_FADE
    Delay 5
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 0, 0
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    PlayPannedSoundEffect SEQ_SE_DP_W011, BATTLE_SOUND_PAN_RIGHT
    CallFunc 48, 0
    Delay 5
    Func_ShakeBg 5, 0, 1, 6, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 2, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
