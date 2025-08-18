#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 341
    JumpIfFriendlyFire L_1
    JumpIfContest L_2
    CreateEmitterForMove 0, 0, 1, 2, 3, 4, 5, 18
    CallFunc 36, 5, 1, 0, 0, 15, 258
    CallFunc 36, 5, 1, 0, 0, 15, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W062, 0, 6, 2
    BeginLoop 3
    CallFunc 34, 5, 8, 0, 1, 31, 8
    Delay 8
    CallFunc 34, 5, 8, 0, 1, 11252, 8
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitterForFriendlyFire 0, 7, 8, 7, 8, 3
    CallFunc 36, 5, 1, 0, 0, 15, 258
    CallFunc 36, 5, 1, 0, 0, 15, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W062, 0, 6, 2
    BeginLoop 3
    CallFunc 34, 5, 8, 0, 1, 31, 8
    Delay 8
    CallFunc 34, 5, 8, 0, 1, 11252, 8
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 6, 3
    CallFunc 36, 5, 1, 0, 0, 15, 258
    CallFunc 36, 5, 1, 0, 0, 15, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W062, 0, 6, 2
    BeginLoop 3
    CallFunc 34, 5, 8, 0, 1, 31, 8
    Delay 8
    CallFunc 34, 5, 8, 0, 1, 11252, 8
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
