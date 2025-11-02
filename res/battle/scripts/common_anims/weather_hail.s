#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 275
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, 0
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W258, 0, 3, 7
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, 0
    WaitForAnimTasks
    End
