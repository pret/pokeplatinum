#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, poison_gas_spa
    LoadParticleResource 1, poison_gas_spa
    JumpIfContest L_1
    PlayLoopedSoundEffectR SEQ_SE_DP_W054, 4, 12
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 1, 4112, 1
    BtlAnimCmd_055 3, 0, 0, 0, 0
    BtlAnimCmd_055 3, 0, 0, 0, 0
    CreateEmitter 1, 1, 4
    Delay 20
    PlayLoopedSoundEffectR SEQ_SE_DP_W109, 4, 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_1:
    PlayLoopedSoundEffectR SEQ_SE_DP_W054, 4, 12
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 1, 4112, 4
    BtlAnimCmd_055 3, 0, 0, 0, 0
    BtlAnimCmd_055 3, 0, 0, 0, 0
    CreateEmitter 1, 1, 4
    Delay 20
    PlayLoopedSoundEffectR SEQ_SE_DP_W109, 4, 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
