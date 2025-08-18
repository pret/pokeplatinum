#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 448
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_LEFT
    BeginLoop 3
    CallFunc 57, 4, 4, 0, 8, 258
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -3440, 0
    Delay 4
    CallFunc 57, 4, 4, 0, -8, 258
    Delay 4
    EndLoop
    CallFunc 57, 4, 4, -16, 8, 258
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    Delay 10
    CallFunc 57, 4, 4, 32, -16, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W085, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CallFunc 36, 5, 4, 0, 1, 2, 264
    CallFunc 57, 4, 4, -16, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
