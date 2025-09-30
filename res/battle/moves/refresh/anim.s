#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, refresh_spa
    PlaySoundEffectL SEQ_SE_DP_W287
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    Delay 30
    PlaySoundEffectL SEQ_SE_DP_W234
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    End
