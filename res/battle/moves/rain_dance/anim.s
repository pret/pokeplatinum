#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, rain_dance_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    CreateEmitter 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W240, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
