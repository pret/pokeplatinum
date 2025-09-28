#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, revenge_spa
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 2, 3
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    Delay 45
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 258, 16, -8, 2
    Delay 2
    Func_Shake 8, 0, 1, 4, 264
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_MoveBattler 258, -16, 8, 2
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
