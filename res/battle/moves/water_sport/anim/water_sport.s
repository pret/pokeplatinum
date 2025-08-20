#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 363
    Func_ScaleBattlerSprite 258, 100, 110, 100, 80, 100, 327681, 327685
    WaitForAnimTasks
    Func_ScaleBattlerSprite 258, 100, 100, 100, 120, 100, 1, 327685
    Delay 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    WaitForAnimTasks
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W057, BATTLE_SOUND_PAN_LEFT
    Func_ScaleBattlerSprite 258, 100, 110, 100, 80, 100, 262145, 262148
    WaitForAnimTasks
    Func_ScaleBattlerSprite 258, 100, 100, 100, 120, 100, 1, 262148
    WaitForAnimTasks
    EndLoop
    PlayPannedSoundEffect SEQ_SE_DP_W057, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_NAMI, 0, 15
    Delay 10
    CreateEmitter 0, 0, 4
    Delay 10
    Func_Shake 2, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
