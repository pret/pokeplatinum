#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, take_down_spa
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattler 258, -16, 8, 4
    WaitForAnimTasks
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 258, 32, -16, 4
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    Func_Shake 4, 0, 1, 4, 264
    Func_MoveBattler 258, -16, 8, 4
    WaitForAnimTasks
    End
