#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 35
    CallFunc 33, 5, 0, 1, 0, 12, 0
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_RIGHT, 1
    CallFunc 36, 5, 4, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
