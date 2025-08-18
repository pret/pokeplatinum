#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 197
    CreateEmitter 0, 0, 4
    CallFunc 34, 6, 8, 0, 3, 32767, 10, 10
    PlayLoopedSoundEffect SEQ_SE_DP_W199, BATTLE_SOUND_PAN_RIGHT, 3, 8
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
