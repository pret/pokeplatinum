#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 341
    JumpIfFriendlyFire L_1
    JumpIfContest L_2
    CreateEmitterForMove 0, 0, 1, 2, 3, 4, 5, 18
    Func_Shake 1, 0, 0, 15, 258
    Func_Shake 1, 0, 0, 15, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W062, 0, 6, 2
    BeginLoop 3
    Func_FadeBattlerSprite 8, 0, 1, 31, 8
    Delay 8
    Func_FadeBattlerSprite 8, 0, 1, 11252, 8
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitterForFriendlyFire 0, 7, 8, 7, 8, 3
    Func_Shake 1, 0, 0, 15, 258
    Func_Shake 1, 0, 0, 15, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W062, 0, 6, 2
    BeginLoop 3
    Func_FadeBattlerSprite 8, 0, 1, 31, 8
    Delay 8
    Func_FadeBattlerSprite 8, 0, 1, 11252, 8
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 6, 3
    Func_Shake 1, 0, 0, 15, 258
    Func_Shake 1, 0, 0, 15, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W062, 0, 6, 2
    BeginLoop 3
    Func_FadeBattlerSprite 8, 0, 1, 31, 8
    Delay 8
    Func_FadeBattlerSprite 8, 0, 1, 11252, 8
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
