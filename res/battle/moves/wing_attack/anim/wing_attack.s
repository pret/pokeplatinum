#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 47
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W017, BATTLE_SOUND_PAN_RIGHT, 2, 2
    CallFunc 36, 5, 3, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
