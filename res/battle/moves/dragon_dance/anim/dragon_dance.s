#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 366
    CreateEmitter 0, 0, 3
    CallFunc 34, 6, 2, 0, 3, 31, 10, 10
    CallFunc 36, 5, 2, 0, 1, 16, 258
    PlayLoopedSoundEffect SEQ_SE_DP_W379, BATTLE_SOUND_PAN_LEFT, 4, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
