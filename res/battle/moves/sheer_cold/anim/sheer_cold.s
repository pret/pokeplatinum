#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 346
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W258, 0, 4, 12
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 0, 0, 0, 0
    CreateEmitter 0, 2, 4
    Delay 15
    Func_FadeBattlerSprite 8, 0, 1, 32767, 10, 10
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
