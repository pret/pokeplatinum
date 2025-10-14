#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 27
    PlayLoopedSoundEffect SEQ_SE_DP_W173B, BATTLE_SOUND_PAN_LEFT, 20, 1
    CreateEmitter 0, 9, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
