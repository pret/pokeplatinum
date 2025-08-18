#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 394
    PlayPannedSoundEffect SEQ_SE_DP_W377, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 20
    Delay 30
    CallFunc 74, 1, 1
    CallFunc 34, 6, 8, 0, 1, 0, 10, 15
    CallFunc 34, 6, 16, 0, 1, 0, 10, 15
    WaitForAnimTasks
    CallFunc 74, 1, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
