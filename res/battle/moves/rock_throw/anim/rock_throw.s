#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 118
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 12
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 0, 1, 1, 8, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
