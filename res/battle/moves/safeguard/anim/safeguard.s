#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 236
    PlayLoopedSoundEffect SEQ_SE_DP_W208, BATTLE_SOUND_PAN_LEFT, 4, 4
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 0, 19
    Delay 15
    CallFunc 34, 5, 2, 0, 1, 32767, 12
    CallFunc 34, 5, 4, 0, 1, 32767, 12
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
