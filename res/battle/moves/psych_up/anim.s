#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, psych_up_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W060B, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
