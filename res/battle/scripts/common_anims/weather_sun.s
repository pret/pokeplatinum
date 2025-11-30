#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 258
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 10, 13311
    CreateEmitter 0, 1, EMITTER_CB_NONE
    CreateEmitter 0, 2, EMITTER_CB_NONE
    CreateEmitter 0, 0, EMITTER_CB_NONE
    PlayPannedSoundEffect SEQ_SE_DP_W080, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, 13311
    WaitForAnimTasks
    End
