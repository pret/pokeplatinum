#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, roar_of_time_spa
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 5, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 6, 3
    PlayPannedSoundEffect SEQ_SE_DP_W459, BATTLE_SOUND_PAN_LEFT
    Delay 20
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    Delay 30
    PlayPannedSoundEffect SEQ_SE_DP_W060C, BATTLE_SOUND_PAN_LEFT
    Delay 20
    Func_FadeBg 0, -2, 12, 0, 0
    WaitForAnimTasks
    Func_FadeBg 0, -2, 0, 15, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W053, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Func_Shake 4, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Delay 20
    Func_FadeBg 0, -2, 15, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    StopSoundEffect SEQ_SE_DP_W053
    End
