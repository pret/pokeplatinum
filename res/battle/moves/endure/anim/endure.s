#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 221
    CreateEmitter 0, 0, 3
    CallFunc 34, 6, 2, 0, 2, 31, 10, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT, 3, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
