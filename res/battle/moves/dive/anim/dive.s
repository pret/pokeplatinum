#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 308
    BtlAnimCmd_013 L_1, L_2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 8, 0, 8, 258
    WaitForAnimTasks
    CallFunc 57, 4, 4, 0, -16, 258
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -3440, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -3440, 0
    WaitForAnimTasks
    CallFunc 40, 2, 2, 1
    WaitForAnimTasks
    CallFunc 57, 4, 1, 0, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    PlayLoopedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_RIGHT, 3, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -3440, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -3440, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -3440, 0
    CallFunc 36, 5, 2, 0, 1, 2, 264
    Delay 15
    CallFunc 40, 2, 2, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
