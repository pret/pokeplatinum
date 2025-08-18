#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 271
    CreateEmitter 0, 0, 3
    CallFunc 34, 5, 2, 1, 1, 32767, 16
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W025, BATTLE_SOUND_PAN_LEFT
    CallFunc 42, 8, 258, 100, 80, 100, 160, 100, 1, 327685
    Delay 10
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 10
    EndLoop
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
