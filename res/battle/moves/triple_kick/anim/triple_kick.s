#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 187
    PlayLoopedSoundEffect SEQ_SE_DP_W007, BATTLE_SOUND_PAN_RIGHT, 2, 2
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
