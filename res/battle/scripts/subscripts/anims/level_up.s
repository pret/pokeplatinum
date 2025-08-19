#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 2
    PlayPannedSoundEffect SEQ_SE_DP_EXPMAX2, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CallFunc 34, 6, 2, 0, 1, 32767, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
