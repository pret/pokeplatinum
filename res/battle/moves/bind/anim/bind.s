#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 50
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    BeginLoop 2
    CallFunc 52, 3, 3, 24, 258
    WaitForAnimTasks
    CallFunc 52, 3, 3, -24, 258
    Delay 1
    CallFunc 42, 8, 264, 100, 70, 100, 100, 100, 1, 327685
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W020B, BATTLE_SOUND_PAN_RIGHT
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
