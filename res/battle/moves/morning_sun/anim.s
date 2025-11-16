#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, morning_sun_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_LIGHT_YELLOW2
    CreateEmitter 0, 0, EMITTER_CB_NONE
    CreateEmitter 0, 1, EMITTER_CB_NONE
    CreateEmitter 0, 2, EMITTER_CB_NONE
    PlaySoundEffectC SEQ_SE_DP_W234
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_LIGHT_YELLOW2
    WaitForAnimTasks
    End
