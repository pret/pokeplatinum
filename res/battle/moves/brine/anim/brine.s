#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 379
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W362, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    CallFunc 36, 5, 2, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
