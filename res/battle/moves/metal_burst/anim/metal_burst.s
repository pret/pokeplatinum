#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 385
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W368, 0, 3, 8
    CallFunc 34, 6, 2, 0, 1, 32767, 10, 0
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 30
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W209, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 2, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
