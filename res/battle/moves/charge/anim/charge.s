#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 285
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    Delay 15
    PlayLoopedSoundEffect SEQ_SE_DP_W360, BATTLE_SOUND_PAN_LEFT, 12, 5
    Delay 77
    PlayPannedSoundEffect SEQ_SE_DP_W085C, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
