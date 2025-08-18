#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 382
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 2, 4
    CallFunc 36, 5, 2, 0, 1, 6, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
