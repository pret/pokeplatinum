#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, slash_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Func_Shake 4, 0, 1, 3, 264
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
