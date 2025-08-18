#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 431
    CallFunc 33, 5, 0, 1, 0, 12, 2124
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W053, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -5504, -1720, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -5504, -1720, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -5504, -1720, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -5504, -1720, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -5504, -1720, 0
    CallFunc 68, 5, 0, 5, 0, 5, 0
    CallFunc 34, 6, 8, 0, 1, 2124, 10, 0
    CallFunc 36, 5, 2, 0, 1, 2, 264
    Delay 20
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -1720, 0
    CallFunc 68, 5, 0, 5, 0, 5, 0
    CallFunc 34, 6, 8, 0, 1, 2124, 10, 0
    CallFunc 36, 5, 2, 0, 1, 2, 264
    Delay 20
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 5504, -1720, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 5504, -1720, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 5504, -1720, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 5504, -1720, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 5504, -1720, 0
    CallFunc 68, 5, 0, 5, 0, 5, 0
    CallFunc 34, 6, 8, 0, 1, 2124, 10, 0
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 2124
    WaitForAnimTasks
    End
