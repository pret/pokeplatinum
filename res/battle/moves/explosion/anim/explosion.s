#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 174
    PlayPannedSoundEffect SEQ_SE_DP_SHUSHU, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 1, 3
    Delay 40
    Func_FadeBg 0, 0, 0, 15, 32767
    Func_FadeBattlerSprite 2, 0, 1, 32767, 15, 20
    Func_FadeBattlerSprite 4, 0, 1, 32767, 15, 20
    Func_FadeBattlerSprite 8, 0, 1, 32767, 15, 20
    Func_FadeBattlerSprite 16, 0, 1, 32767, 15, 20
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_186, 0
    Delay 14
    PlayLoopedSoundEffect SEQ_SE_DP_W436, BATTLE_SOUND_PAN_LEFT, 3, 4
    Func_Shake 4, 0, 1, 2, 320
    Delay 15
    Func_FadeBg 0, 0, 15, 0, 32767
    Func_ShakeBg 8, 8, 0, 8, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
