#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, rage_spa
    PlayPannedSoundEffect SEQ_SE_DP_131, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 50
    Func_FadeBattlerSprite 2, 0, 2, BATTLE_COLOR_RED, 10, 0
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, 258
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, 258
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
