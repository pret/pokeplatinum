#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 61
    Func_MoveBattler 258, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, 264
    Func_MoveBattler 258, -14, 8, 2
    PlayLoopedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 2, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
