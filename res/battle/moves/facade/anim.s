#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, facade_spa
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT, 8, 6
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_ScaleBattlerSprite 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 8
    Func_ScaleBattlerSprite 258, 100, 80, 100, 140, 100, 1, 327685
    Delay 8
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 0
    Func_ScaleBattlerSprite 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 8
    Func_ScaleBattlerSprite 258, 100, 80, 100, 140, 100, 1, 327685
    Delay 8
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 10, 0
    Func_ScaleBattlerSprite 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 8
    Func_ScaleBattlerSprite 258, 100, 80, 100, 140, 100, 1, 327685
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    Func_Shake 2, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
