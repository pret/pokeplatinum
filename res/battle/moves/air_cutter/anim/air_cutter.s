#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 331
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 1, 20
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W104, 0, 2, 6
    Delay 5
    CallFunc 36, 5, 0, 2, 1, 2, 264
    CallFunc 36, 5, 0, 2, 1, 2, 272
    PlayPannedSoundEffect SEQ_SE_DP_W015, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
