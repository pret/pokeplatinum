#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 98
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_LEFT
    CallFunc 60, 3, 2, 1, 10
    WaitForAnimTasks
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 1, 0, 1, 8, 264
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
