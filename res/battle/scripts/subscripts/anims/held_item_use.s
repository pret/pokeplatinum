#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 28
    CreateEmitter 0, 0, 3
    Delay 5
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 0
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT
    Func_ScaleBattlerSprite 258, 100, 80, 100, 140, 100, 1, 327685
    Delay 10
    Func_ScaleBattlerSprite 258, 100, 120, 100, 80, 100, 1, 327685
    Delay 10
    EndLoop
    PlayPannedSoundEffect SEQ_SE_DP_BT_001, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
