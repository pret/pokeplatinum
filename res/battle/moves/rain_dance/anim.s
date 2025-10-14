#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rain_dance_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    CreateEmitter 0, 0, 0
    PlaySoundEffectC SEQ_SE_DP_W240
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
