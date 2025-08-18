#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 45
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_W015, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 3, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
