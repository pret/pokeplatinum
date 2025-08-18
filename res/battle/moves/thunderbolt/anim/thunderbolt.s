#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 115
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 2, 4
    PlayPannedSoundEffect SEQ_SE_DP_KAMI, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    CallFunc 34, 6, 8, 0, 1, 0, 15, 0
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 4, 264
    Delay 5
    CreateEmitter 0, 3, 4
    PlayDelayedSoundEffect SEQ_SE_DP_W063B, BATTLE_SOUND_PAN_RIGHT, 50
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
