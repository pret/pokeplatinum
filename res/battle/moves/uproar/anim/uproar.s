#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 270
    PlayLoopedSoundEffect SEQ_SE_DP_W253, BATTLE_SOUND_PAN_LEFT, 29, 3
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685
    WaitForAnimTasks
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    CallFunc 42, 8, 258, 100, 80, 100, 140, 100, 1, 327685
    WaitForAnimTasks
    BeginLoop 2
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685
    WaitForAnimTasks
    CallFunc 42, 8, 258, 100, 80, 100, 140, 100, 1, 327685
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
