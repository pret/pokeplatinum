#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 150
    LoadParticleResource 1, 150
    CreateEmitter 0, 5, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_LEFT, 4, 10
    Delay 20
    CreateEmitterEx 0, 1, 6, 3
    CallFunc 65, 6, 1, 0, 0, 0, 19, 64
    Delay 25
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    Delay 5
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 22, BATTLE_BG_SWITCH_MODE_FADE
    StopSoundEffect SEQ_SE_DP_W172
    PlayPannedSoundEffect SEQ_SE_DP_W172B, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_RIGHT
    CallFunc 34, 6, 8, 0, 2, 31, 10, 0
    CallFunc 36, 5, 2, 0, 1, 8, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 22, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
