#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 175
    LoadParticleResource 1, 31
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_RIGHT, 8, 2
    Delay 3
    CreateEmitter 1, 1, 4
    CreateEmitter 1, 0, 4
    Func_Shake 1, 0, 1, 4, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
