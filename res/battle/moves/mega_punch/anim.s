#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, mega_punch_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_RIGHT, 1
    Func_Shake 4, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
