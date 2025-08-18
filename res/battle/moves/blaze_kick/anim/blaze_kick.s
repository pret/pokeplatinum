#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 316
    PlayPannedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CallFunc 34, 6, 8, 0, 1, 32767, 8, 0
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W007, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 2, 0, 1, 4, 264
    CallFunc 34, 6, 8, 0, 1, 31, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
