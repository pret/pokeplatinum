#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, return_spa
    CallFunc 29, 0
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_LEFT
    Delay 16
    EndLoop
    WaitForAnimTasks
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
