#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, hit_1_spa
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
