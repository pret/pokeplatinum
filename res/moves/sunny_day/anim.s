#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sunny_day_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 10, BATTLE_COLOR_LIGHT_YELLOW1
    CreateEmitter 0, 1, EMITTER_CB_NONE
    CreateEmitter 0, 2, EMITTER_CB_NONE
    CreateEmitter 0, 0, EMITTER_CB_NONE
    PlaySoundEffectC SEQ_SE_DP_W080
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 10, 0, BATTLE_COLOR_LIGHT_YELLOW1
    WaitForAnimTasks
    End
