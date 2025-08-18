#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    CallFunc 34, 6, 8, 0, 1, 13741, 10, 0
    CallFunc 13, 0
    PlayPannedSoundEffect SEQ_SE_DP_W060, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End

L_2:
    LoadParticleResource 0, 370
    CallFunc 33, 5, 0, 0, 0, 16, 32767
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W466, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 0, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 0, 0, 0, 0
    Delay 30
    PlayLoopedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_RIGHT, 6, 5
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CallFunc 36, 5, 4, 0, 1, 10, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 0, 16, 0, 32767
    WaitForAnimTasks
    End
