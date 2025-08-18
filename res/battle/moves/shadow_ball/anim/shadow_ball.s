#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 264
    CreateEmitter 0, 4, 0
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W028, 0, 2, 12
    Delay 55
    CreateEmitter 0, 2, 0
    CallFunc 65, 8, 0, 0, 0, 0, 8, 255, 0, 262144
    CreateEmitter 0, 3, 4
    CallFunc 36, 5, 2, 0, 1, 2, 264
    CallFunc 34, 6, 8, 0, 1, 8296, 14, 0
    PlayPannedSoundEffect SEQ_SE_DP_480, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
