#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 81
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 3
    CallFunc 66, 6, 0, 0, 0, 0, 8, 64
    Delay 8
    CallFunc 34, 6, 8, 0, 1, 31764, 10, 0
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CallFunc 34, 6, 16, 0, 1, 31764, 10, 0
    CallFunc 36, 5, 1, 0, 1, 2, 272
    PlayPannedSoundEffect SEQ_SE_DP_W145, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
