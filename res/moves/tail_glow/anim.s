#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, tail_glow_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 5, 0, 0, 0
    SetExtraParams 1, 0, -1376, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W234, 24, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
