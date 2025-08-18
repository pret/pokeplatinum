#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 129
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    CallFunc 15, 0
    PlayPannedSoundEffect SEQ_SE_DP_W100, BATTLE_SOUND_PAN_LEFT
    Delay 10
    CreateEmitter 0, 0, 3
    WaitForAnimTasks
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
