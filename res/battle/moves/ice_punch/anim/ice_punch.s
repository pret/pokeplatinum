#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 38
    CallFunc 33, 5, 0, 1, 0, 8, 32631
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W280, BATTLE_SOUND_PAN_RIGHT, 5
    CallFunc 34, 6, 8, 0, 2, 32631, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 8, 0, 32631
    WaitForAnimTasks
    End
