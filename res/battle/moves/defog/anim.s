#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, defog_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_BFBRADE, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    Delay 30
    Func_FadeBg 0, 1, 12, 0, 0
    Delay 15
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
