#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 66
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 4, -16, 8, 258
    WaitForAnimTasks
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_RIGHT
    CallFunc 57, 4, 4, 32, -16, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 4, 0, 1, 4, 264
    CallFunc 57, 4, 4, -16, 8, 258
    WaitForAnimTasks
    End
