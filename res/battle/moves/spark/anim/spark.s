#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 227
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    PlayPannedSoundEffect SEQ_SE_DP_W209, BATTLE_SOUND_PAN_LEFT
    Func_FadeBattlerSprite 2, 1, 1, 13311, 10
    BeginLoop 3
    Func_FadeBg 0, 0, 0, 8, 13311
    WaitForAnimTasks
    Func_FadeBg 0, 0, 8, 0, 13311
    WaitForAnimTasks
    EndLoop
    Func_FadeBattlerSprite 8, 1, 1, 13311, 10
    Delay 5
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 6, 264
    PlayPannedSoundEffect SEQ_SE_DP_W086, BATTLE_SOUND_PAN_RIGHT
    Delay 1
    Func_MoveBattlerX2 3, 24, 258
    Delay 5
    Func_MoveBattlerX2 3, -24, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
