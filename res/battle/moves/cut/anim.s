#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, cut_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W015, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 3, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
