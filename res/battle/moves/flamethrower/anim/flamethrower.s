#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 83
    CallFunc 33, 5, 0, 1, 0, 12, 2124
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W053, BATTLE_SOUND_PAN_RIGHT
    Delay 50
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 2, 0, 1, 14, 258
    Delay 3
    CallFunc 34, 6, 8, 0, 1, 31, 10, 25
    CallFunc 36, 5, 2, 0, 1, 14, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 2124
    WaitForAnimTasks
    End
