#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 113
    PlayPannedSoundEffect SEQ_SE_DP_W221B, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 34, 6, 8, 0, 2, 31, 10, 10
    CallFunc 36, 5, 1, 0, 1, 8, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
