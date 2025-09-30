#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, stockpile_spa
    CreateEmitter 0, 0, 3
    Func_FadeBattlerSprite 2, 1, 1, BATTLE_COLOR_WHITE, 16
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W025, BATTLE_SOUND_PAN_LEFT
    Func_ScaleBattlerSprite 258, 100, 80, 100, 160, 100, 1, 327685
    Delay 10
    Func_ScaleBattlerSprite 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 10
    EndLoop
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
