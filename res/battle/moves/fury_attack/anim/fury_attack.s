#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 61
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CallFunc 57, 4, 2, -14, 8, 258
    PlayLoopedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 2, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
