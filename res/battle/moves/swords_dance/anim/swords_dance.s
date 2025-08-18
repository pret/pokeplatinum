#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 44
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlayPannedSoundEffect SEQ_SE_DP_SHUSHU, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
