#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 65
    BeginLoop 2
    PlayLoopedSoundEffect SEQ_SE_DP_W020B, BATTLE_SOUND_PAN_LEFT, 4, 2
    CreateEmitter 0, 0, 3
    CallFunc 60, 3, 2, 1, 12
    CallFunc 42, 8, 258, 100, 70, 100, 100, 100, 1, 327685
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
