#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 191
    CreateEmitter 0, 0, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_LEFT, 3, 12
    Delay 20
    Func_FadeBattlerSprite 2, 0, 1, 31, 12
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, 258
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    Func_FadeBattlerSprite 8, 0, 1, 31, 12
    Func_Shake 2, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W172B, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
