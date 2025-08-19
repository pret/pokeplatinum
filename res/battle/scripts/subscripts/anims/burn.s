#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 27
    PlayPannedSoundEffect SEQ_SE_DP_W172, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 2, 3
    CallFunc 34, 6, 2, 0, 1, 31, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
