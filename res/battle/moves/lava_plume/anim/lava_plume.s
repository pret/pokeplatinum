#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 453
    PlayPannedSoundEffect SEQ_SE_DP_W436, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 3
    CallFunc 36, 5, 2, 0, 1, 2, 288
    Delay 1
    JumpIfFriendlyFire L_1
    CallFunc 34, 6, 8, 0, 1, 31, 10, 0
    CallFunc 34, 6, 16, 0, 1, 31, 10, 0
    CallFunc 34, 6, 4, 0, 1, 31, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    JumpIfBattlerSide 0, L_2, L_3
    End

L_2:
    CallFunc 34, 6, 8, 0, 1, 31, 10, 10
    CallFunc 34, 6, 2056, 0, 1, 31, 10, 10
    CallFunc 34, 6, 2064, 0, 1, 31, 10, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    CallFunc 34, 6, 8, 0, 1, 31, 10, 10
    CallFunc 34, 6, 2050, 0, 1, 31, 10, 10
    CallFunc 34, 6, 2052, 0, 1, 31, 10, 10
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
    End
    End
