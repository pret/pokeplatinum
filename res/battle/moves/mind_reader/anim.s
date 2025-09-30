#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mind_reader_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    PlaySoundEffectR SEQ_SE_DP_W109
    PlayDelayedSoundEffectR SEQ_SE_DP_W043, 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
