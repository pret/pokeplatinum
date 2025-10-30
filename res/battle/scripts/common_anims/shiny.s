#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 27
    PlayPannedSoundEffect SEQ_SE_DP_REAPOKE, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
