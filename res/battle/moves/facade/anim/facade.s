#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 280
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT, 8, 6
    CallFunc 34, 6, 2, 0, 1, 31, 10, 0
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 8
    CallFunc 42, 8, 258, 100, 80, 100, 140, 100, 1, 327685
    Delay 8
    CallFunc 34, 6, 2, 0, 1, 49930, 10, 0
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 8
    CallFunc 42, 8, 258, 100, 80, 100, 140, 100, 1, 327685
    Delay 8
    CallFunc 34, 6, 2, 0, 1, 13311, 10, 0
    CallFunc 42, 8, 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 8
    CallFunc 42, 8, 258, 100, 80, 100, 140, 100, 1, 327685
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    CallFunc 36, 5, 2, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
