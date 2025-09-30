#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, pursuit_spa
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayDelayedSoundEffect SEQ_SE_DP_209, BATTLE_SOUND_PAN_RIGHT, 15
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Delay 5
    Func_Shake 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
