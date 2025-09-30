#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, fury_cutter_spa
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W043, 0
    Func_FadeBg 0, 0, 0, 8, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    Func_FadeBg 0, 0, 8, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    EndLoop
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Delay 5
    Func_Shake 0, 2, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
