#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 0
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
