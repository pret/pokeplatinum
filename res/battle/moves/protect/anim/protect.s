#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, protect_spa
    PlayPannedSoundEffect SEQ_SE_DP_W115, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
