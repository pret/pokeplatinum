#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 467
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 4, 4
    Delay 5
    Func_Shake 1, 0, 1, 4, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
