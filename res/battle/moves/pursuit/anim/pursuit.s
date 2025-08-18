#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 245
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayDelayedSoundEffect SEQ_SE_DP_209, BATTLE_SOUND_PAN_RIGHT, 15
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Delay 5
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
