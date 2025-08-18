#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 330
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CallFunc 27, 1, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_LEFT, 8, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
