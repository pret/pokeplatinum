#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 28
    PlayPannedSoundEffect SEQ_SE_DP_BT_001, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
