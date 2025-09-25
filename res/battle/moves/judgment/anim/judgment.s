#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 466
    Func_FadeBg 0, 1, 0, 15, 32767
    WaitForAnimTasks
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    PlayPannedSoundEffect SEQ_SE_DP_W460, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    Func_Shake 2, 0, 1, 6, 264
    WaitForAnimTasks
    Func_Shake 2, 0, 1, 6, 264
    PlayPannedSoundEffect SEQ_SE_DP_W082B, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    Func_Shake 2, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 15, 0, 32767
    WaitForAnimTasks
    End
