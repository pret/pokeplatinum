#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 176
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayLoopedSoundEffect SEQ_SE_DP_W173B, BATTLE_SOUND_PAN_LEFT, 20, 1
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
