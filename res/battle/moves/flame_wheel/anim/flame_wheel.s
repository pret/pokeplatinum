#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 191
    CreateEmitter 0, 0, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_LEFT, 3, 12
    Delay 20
    CallFunc 34, 5, 2, 0, 1, 31, 12
    WaitForAnimTasks
    CallFunc 52, 3, 3, 24, 258
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    CallFunc 34, 5, 8, 0, 1, 31, 12
    CallFunc 36, 5, 2, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W172B, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    CallFunc 52, 3, 3, -24, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
