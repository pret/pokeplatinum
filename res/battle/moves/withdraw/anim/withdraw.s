#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 136
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    Delay 17
    PlayLoopedSoundEffect SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, 3, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
