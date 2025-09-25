#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, morning_sun_spa
    Func_FadeBg 0, 1, 0, 12, 26623
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    CreateEmitter 0, 2, 0
    PlayPannedSoundEffect SEQ_SE_DP_W234, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 26623
    WaitForAnimTasks
    End
