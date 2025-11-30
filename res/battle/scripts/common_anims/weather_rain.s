#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, 0
    LoadParticleResource 0, 257
    CreateEmitter 0, 0, EMITTER_CB_NONE
    PlayPannedSoundEffect SEQ_SE_DP_W240, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, 0
    WaitForAnimTasks
    End
