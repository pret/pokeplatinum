#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 39
    CallFunc 33, 5, 0, 1, 0, 12, 0
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W161B, BATTLE_SOUND_PAN_RIGHT, 5
    CallFunc 34, 6, 8, 0, 2, 13311, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
