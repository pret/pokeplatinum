#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 451
    CallFunc 33, 5, 0, 1, 0, 12, 10272
    PlayPannedSoundEffect SEQ_SE_DP_201, 0
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    Delay 50
    PlayPannedSoundEffect SEQ_SE_DP_W089, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 0, 0, 0, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W434, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W434, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 4, 0, 1, 2, 264
    CallFunc 68, 5, 0, 3, 0, 1, 0
    Delay 10
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W434, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 4, 0, 1, 2, 264
    CallFunc 68, 5, 0, 3, 0, 1, 0
    Delay 15
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 4, 0, 1, 2, 264
    CallFunc 68, 5, 0, 4, 0, 4, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W434, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 20
    CallFunc 33, 5, 0, 1, 12, 0, 10272
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
