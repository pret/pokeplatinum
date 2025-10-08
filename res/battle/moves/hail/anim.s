#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hail_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffectC SEQ_SE_DP_W258, 3, 9
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
