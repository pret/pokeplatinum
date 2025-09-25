#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 146
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W122, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 4, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
