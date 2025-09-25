#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 231
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W173B, BATTLE_SOUND_PAN_LEFT, 8, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
