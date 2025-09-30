#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, amnesia_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_W118, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_W145B, BATTLE_SOUND_PAN_LEFT, 18
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
