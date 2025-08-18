#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 474
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 40, BATTLE_BG_SWITCH_MODE_FADE
    PlayPannedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CallFunc 68, 5, 4, 4, 0, 10, 0
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 2, 0, 1, 2, 264
    CallFunc 57, 4, 2, -14, 8, 258
    CallFunc 34, 6, 8, 0, 1, 31, 14, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 40, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
