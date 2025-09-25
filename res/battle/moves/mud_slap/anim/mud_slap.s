#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 208
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W028, 0, 4, 6
    Delay 20
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 2, 264
    Func_FadeBattlerSprite 8, 0, 1, 13741, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
