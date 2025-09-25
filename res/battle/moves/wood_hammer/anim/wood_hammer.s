#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, wood_hammer_spa
    PlayPannedSoundEffect SEQ_SE_DP_W452, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    Func_Shake 2, 0, 1, 6, 264
    Func_ShakeBg 0, 5, 1, 5, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
