#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, 193
    CreateEmitter 0, 1, 3
    BeginLoop 1
    PlayPannedSoundEffect SEQ_SE_DP_W185, BATTLE_SOUND_PAN_LEFT
    Func_FadeBattlerSprite 2, 0, 1, 31, 10, 10
    Func_MoveBattlerX2 10, 10, 258
    Delay 10
    Func_MoveBattlerX2 20, -20, 258
    Delay 20
    Func_MoveBattlerX2 10, 10, 258
    Delay 10
    EndLoop
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, 193
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_032, BATTLE_SOUND_PAN_LEFT, 12, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 0, 3
    Func_Shake 2, 0, 1, 6, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
