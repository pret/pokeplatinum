#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 483
    PlayPannedSoundEffect SEQ_SE_DP_W466, BATTLE_SOUND_PAN_RIGHT
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    CreateEmitter 0, 0, 4
    Func_Shake 3, 0, 1, 3, 264
    WaitForAnimTasks
    Func_MoveBattlerX2 4, -20, 264
    WaitForAnimTasks
    Delay 35
    Func_MoveBattlerX2 5, 20, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 1, 4
    Func_Shake 3, 0, 1, 3, 264
    WaitForAnimTasks
    Func_MoveBattlerX2 4, -20, 264
    WaitForAnimTasks
    Delay 35
    Func_MoveBattlerX2 5, 20, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
