#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 84
    CallFunc 33, 5, 0, 1, 0, 12, 32767
    PlayLoopedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT, 4, 3
    CreateEmitter 0, 0, 19
    CallFunc 34, 6, 2, 0, 1, 32767, 10, 60
    CallFunc 34, 6, 4, 0, 1, 32767, 10, 60
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 32767
    WaitForAnimTasks
    End
