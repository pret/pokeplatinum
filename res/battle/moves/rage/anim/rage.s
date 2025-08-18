#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 128
    PlayPannedSoundEffect SEQ_SE_DP_131, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 50
    CallFunc 34, 6, 2, 0, 2, 31, 10, 0
    WaitForAnimTasks
    CallFunc 52, 3, 3, 24, 258
    WaitForAnimTasks
    CallFunc 52, 3, 3, -24, 258
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
