#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 256
    SetCameraProjection 0, 0
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 1, 20
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_060, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    CallFunc 36, 5, 3, 0, 1, 15, 264
    CallFunc 36, 5, 3, 0, 1, 15, 272
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
