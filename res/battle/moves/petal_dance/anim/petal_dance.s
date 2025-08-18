#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 110
    PlayPannedSoundEffect SEQ_SE_DP_W080, BATTLE_SOUND_PAN_LEFT
    CallFunc 60, 3, 2, 3, 10
    BeginLoop 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 10
    EndLoop
    WaitForAnimTasks
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 10, 264
    PlayPannedSoundEffect SEQ_SE_DP_W080C, BATTLE_SOUND_PAN_RIGHT
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
