#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 464
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_300, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_Shake 1, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
