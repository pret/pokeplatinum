#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 63
    PlayPannedSoundEffect SEQ_SE_DP_050, BATTLE_SOUND_PAN_RIGHT
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
