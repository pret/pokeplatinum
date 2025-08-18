#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 114
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W085, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W063B, BATTLE_SOUND_PAN_RIGHT, 13
    CreateEmitter 0, 0, 4
    Delay 5
    CallFunc 34, 6, 8, 0, 1, 0, 15, 0
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
