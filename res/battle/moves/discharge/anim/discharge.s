#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 452
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    Delay 2
    PlayLoopedSoundEffect SEQ_SE_DP_W085B, BATTLE_SOUND_PAN_LEFT, 4, 7
    Delay 28
    CallFunc 36, 5, 2, 0, 1, 2, 288
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffect SEQ_SE_DP_W085, BATTLE_SOUND_PAN_RIGHT, 5
    CallFunc 34, 6, 8, 0, 1, 13311, 14, 0
    CallFunc 34, 6, 16, 0, 1, 13311, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
