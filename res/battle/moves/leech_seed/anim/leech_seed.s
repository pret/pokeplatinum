#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 103
    LoadParticleResource 1, 348
    CreateEmitterEx 1, 0, 0, 3
    CallFunc 66, 6, 0, 0, -2, 0, 13, 64
    Delay 2
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_001, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 1, 1, 0, 3
    CallFunc 66, 6, 1, -20, -2, 0, 13, 64
    Delay 2
    CreateEmitterEx 1, 2, 0, 3
    CallFunc 66, 6, 2, 20, -2, 0, 13, 64
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -344, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -344, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -344, 0
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -3440, -344, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -3440, -344, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -3440, -344, 0
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 3440, -344, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 3440, -344, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 3440, -344, 0
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
