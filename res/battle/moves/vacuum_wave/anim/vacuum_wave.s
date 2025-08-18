#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 427
    PlayPannedSoundEffect SEQ_SE_DP_W015, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
