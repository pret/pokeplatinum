#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 112
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W082C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 15
    CreateEmitter 0, 0, 4
    BeginLoop 2
    Func_Shake 4, 0, 1, 8, 264
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
