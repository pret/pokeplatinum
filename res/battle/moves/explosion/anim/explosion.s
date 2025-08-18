#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 174
    PlayPannedSoundEffect SEQ_SE_DP_SHUSHU, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 1, 3
    Delay 40
    CallFunc 33, 5, 0, 0, 0, 15, 32767
    CallFunc 34, 6, 2, 0, 1, 32767, 15, 20
    CallFunc 34, 6, 4, 0, 1, 32767, 15, 20
    CallFunc 34, 6, 8, 0, 1, 32767, 15, 20
    CallFunc 34, 6, 16, 0, 1, 32767, 15, 20
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_186, 0
    Delay 14
    PlayLoopedSoundEffect SEQ_SE_DP_W436, BATTLE_SOUND_PAN_LEFT, 3, 4
    CallFunc 36, 5, 4, 0, 1, 2, 320
    Delay 15
    CallFunc 33, 5, 0, 0, 15, 0, 32767
    CallFunc 68, 5, 8, 8, 0, 8, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
