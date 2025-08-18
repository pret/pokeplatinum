#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 94
    CallFunc 4, 3, 65535, 63714, 2
    Delay 2
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
