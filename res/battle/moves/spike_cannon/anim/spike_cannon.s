#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 155
    CallFunc 52, 3, 2, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 16, 0
    BtlAnimCmd_055 5, 3, 0, 0, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT, 2, 8
    CallFunc 52, 3, 2, 8, 258
    Delay 10
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 2, 0, 1, 6, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
