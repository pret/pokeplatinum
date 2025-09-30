#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, splash_spa
    Func_Splash
    BeginLoop 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_023, BATTLE_SOUND_PAN_LEFT
    Delay 20
    EndLoop
    WaitForAnimTasks
    End
