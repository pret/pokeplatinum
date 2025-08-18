#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 483
    PlayPannedSoundEffect SEQ_SE_DP_W466, BATTLE_SOUND_PAN_RIGHT
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 3, 0, 1, 3, 264
    WaitForAnimTasks
    CallFunc 52, 3, 4, -20, 264
    WaitForAnimTasks
    Delay 35
    CallFunc 52, 3, 5, 20, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 3, 0, 1, 3, 264
    WaitForAnimTasks
    CallFunc 52, 3, 4, -20, 264
    WaitForAnimTasks
    Delay 35
    CallFunc 52, 3, 5, 20, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
