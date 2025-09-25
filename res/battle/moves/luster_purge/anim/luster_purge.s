#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 312
    PlayPannedSoundEffect SEQ_SE_DP_W076, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    Delay 60
    Func_FadeBg 0, 1, 0, 16, 32767
    Func_FadeBattlerSprite 2050, 0, 1, 32767, 16, 30
    Func_FadeBattlerSprite 2056, 0, 1, 32767, 16, 30
    Func_FadeBattlerSprite 2052, 0, 1, 32767, 16, 30
    Func_FadeBattlerSprite 2064, 0, 1, 32767, 16, 30
    Delay 20
    PlayLoopedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 4, 8
    CreateEmitter 0, 0, 4
    Delay 20
    Func_FadeBg 0, 1, 16, 0, 32767
    Func_Shake 4, 0, 1, 6, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
