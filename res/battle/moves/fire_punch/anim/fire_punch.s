#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 37
    CallFunc 33, 5, 0, 1, 0, 12, 2124
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W053B, BATTLE_SOUND_PAN_RIGHT, 5
    CallFunc 34, 6, 8, 0, 2, 2124, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 2124
    WaitForAnimTasks
    End
