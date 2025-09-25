#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, focus_punch_spa
    PlayPannedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 2, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, focus_punch_spa
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 31, BATTLE_BG_SWITCH_MODE_FADE
    Func_MoveBattler 258, 16, -8, 2
    Delay 10
    Func_ShakeBg 5, 0, 1, 6, 0
    Func_Shake 4, 0, 1, 4, 264
    Func_MoveBattler 258, -16, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 31, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
