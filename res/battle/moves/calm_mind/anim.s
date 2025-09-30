#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, calm_mind_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W048, BATTLE_SOUND_PAN_LEFT, 2, 4
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
