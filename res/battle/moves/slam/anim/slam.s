#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 51
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_MoveBattler 258, 14, 4, 2
    Delay 1
    Func_MoveBattler 264, -14, -4, 2
    WaitForAnimTasks
    Func_MoveBattler 258, -14, -4, 2
    Func_MoveBattler 264, 14, 4, 4
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
