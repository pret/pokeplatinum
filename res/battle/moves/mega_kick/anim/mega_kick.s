#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 55
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 0, BATTLE_BG_SWITCH_MODE_FADE
    Delay 5
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    PlayDelayedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_RIGHT, 1
    CallFunc 36, 5, 4, 0, 1, 2, 264
    Delay 1
    CallFunc 68, 5, 5, 0, 1, 3, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 0, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
