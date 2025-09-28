#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, guillotine_spa
    Func_FadeBg 0, 1, 0, 12, 0
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 4, 4
    PlayPannedSoundEffect SEQ_SE_DP_W011, BATTLE_SOUND_PAN_RIGHT
    Delay 20
    PlayPannedSoundEffect SEQ_SE_PL_W012, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 3, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
