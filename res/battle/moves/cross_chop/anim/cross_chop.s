#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 255
    PlayPannedSoundEffect SEQ_SE_DP_W025, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 4, 4
    Delay 10
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 5, 4
    Delay 55
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
