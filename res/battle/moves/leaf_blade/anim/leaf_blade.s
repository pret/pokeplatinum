#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 365
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W015, BATTLE_SOUND_PAN_RIGHT, 2, 7
    Delay 30
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
