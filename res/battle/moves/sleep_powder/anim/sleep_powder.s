#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 109
    CreateEmitter 0, 0, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W077B, BATTLE_SOUND_PAN_RIGHT, 4, 6
    CallFunc 34, 6, 8, 0, 2, 11252, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
