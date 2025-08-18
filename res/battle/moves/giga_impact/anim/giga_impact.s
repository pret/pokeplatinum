#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 433
    PlayPannedSoundEffect SEQ_SE_DP_131, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 4, -16, 8, 258
    WaitForAnimTasks
    Delay 15
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 5, BATTLE_BG_SWITCH_MODE_FADE
    PlayPannedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 4, 32, -16, 258
    WaitForAnimTasks
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CallFunc 57, 4, 4, -16, 8, 258
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_161, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CallFunc 68, 5, 0, 5, 0, 5, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 5, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
