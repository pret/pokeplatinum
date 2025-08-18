#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 177
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 1, 20
    CreateEmitter 0, 2, 20
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT, 1, 20
    Delay 5
    CallFunc 36, 5, 2, 0, 1, 10, 264
    CallFunc 36, 5, 2, 0, 1, 10, 272
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
