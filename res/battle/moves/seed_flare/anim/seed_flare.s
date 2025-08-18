#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 482
    PlayPannedSoundEffect SEQ_SE_DP_SHUSHU, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 1, 3
    CallFunc 33, 5, 0, 0, 0, 13, 32767
    WaitForAnimTasks
    Delay 40
    PlayPannedSoundEffect SEQ_SE_DP_W465, 0
    CallFunc 33, 5, 0, 0, 13, 0, 32767
    CallFunc 68, 5, 4, 4, 0, 10, 0
    CallFunc 36, 5, 2, 0, 1, 6, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
