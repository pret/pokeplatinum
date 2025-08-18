#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 78
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitterEx 0, 1, 0, 3
    CallFunc 65, 6, 1, 0, 0, 0, 14, 64
    Delay 10
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W048, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
