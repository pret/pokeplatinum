#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 192
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    CallFunc 68, 5, 5, 0, 0, 8, 0
    CallFunc 36, 5, 2, 0, 1, 6, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W173B, BATTLE_SOUND_PAN_LEFT, 20, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
