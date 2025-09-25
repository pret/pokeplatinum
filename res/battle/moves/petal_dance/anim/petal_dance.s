#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, petal_dance_spa
    PlayPannedSoundEffect SEQ_SE_DP_W080, BATTLE_SOUND_PAN_LEFT
    Func_RevolveBattler 2, 3, 10
    BeginLoop 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 10
    EndLoop
    WaitForAnimTasks
    Func_MoveBattler 258, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 10, 264
    PlayPannedSoundEffect SEQ_SE_DP_W080C, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
