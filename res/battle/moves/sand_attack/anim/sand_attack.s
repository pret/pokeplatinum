#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 58
    Func_MoveBattlerX2 3, -24, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, 258
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W028, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 9
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
