#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 144
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 2
    SwitchBg 21, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    Func_ShakeBg 8, 8, 0, 20, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_LEFT, 2, 10
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_LEFT
    Func_Shake 4, 0, 1, 2, 288
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 2
    RestoreBg 21, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
