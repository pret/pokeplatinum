#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, charge_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    Delay 15
    PlayLoopedSoundEffectL SEQ_SE_DP_W360, 12, 5
    Delay 77
    PlaySoundEffectL SEQ_SE_DP_W085C
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
