#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 92
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W062, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 4096, 0
    BtlAnimCmd_055 5, 3, 0, 0, 0, 0
    Delay 10
    Func_Shake 1, 0, 1, 4, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
