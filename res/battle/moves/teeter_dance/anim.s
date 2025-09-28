#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, teeter_dance_spa
    PlayLoopedSoundEffect SEQ_SE_DP_W298, BATTLE_SOUND_PAN_LEFT, 4, 6
    CreateEmitter 0, 0, 3
    Func_MoveBattlerX2 8, 24, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 8, 12, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 8, -36, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 8, -24, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 8, -12, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 8, 36, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 4, -4, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 4, 4, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
