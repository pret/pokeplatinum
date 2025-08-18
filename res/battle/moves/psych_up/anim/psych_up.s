#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 261
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W060B, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
