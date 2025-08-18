#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 447
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT, 3, 10
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 6, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 7, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Delay 90
    PlayLoopedSoundEffect SEQ_SE_DP_161, BATTLE_SOUND_PAN_RIGHT, 2, 2
    CreateEmitter 0, 0, 3
    CallFunc 65, 6, 0, 0, 0, 0, 10, 64
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_400, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 2, 0, 1, 2, 264
    CreateEmitter 0, 1, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
