#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 200
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 5, 0, 0
    Delay 5
    CallFunc 34, 6, 8, 0, 1, 32767, 14, 0
    CallFunc 34, 6, 16, 0, 1, 32767, 14, 0
    CreateEmitter 0, 1, 20
    CallFunc 36, 5, 2, 0, 1, 10, 264
    CallFunc 36, 5, 2, 0, 1, 10, 272
    PlayLoopedSoundEffect SEQ_SE_DP_150, BATTLE_SOUND_PAN_RIGHT, 3, 8
    Delay 50
    CallFunc 34, 6, 8, 0, 1, 32767, 14, 0
    CallFunc 34, 6, 16, 0, 1, 32767, 14, 0
    CallFunc 36, 5, 2, 0, 1, 10, 264
    CallFunc 36, 5, 2, 0, 1, 10, 272
    PlayLoopedSoundEffect SEQ_SE_DP_W258, BATTLE_SOUND_PAN_RIGHT, 6, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
