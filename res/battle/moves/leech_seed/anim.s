#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, leech_seed_spa
    LoadParticleResource 1, bullet_seed_spa
    CreateEmitterEx 1, 0, 0, 3
    Func_MoveEmitterA2BParabolic 0, 0, -2, 0, 13, 64
    Delay 2
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_001, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 1, 1, 0, 3
    Func_MoveEmitterA2BParabolic 1, -20, -2, 0, 13, 64
    Delay 2
    CreateEmitterEx 1, 2, 0, 3
    Func_MoveEmitterA2BParabolic 2, 20, -2, 0, 13, 64
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -344, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -344, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -344, 0
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -3440, -344, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -3440, -344, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -3440, -344, 0
    Delay 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 3440, -344, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 3440, -344, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 3440, -344, 0
    PlaySoundEffectR SEQ_SE_DP_080
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
