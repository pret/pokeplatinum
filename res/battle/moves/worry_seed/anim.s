#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, worry_seed_spa
    CreateEmitter 0, 1, 4
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 19, 64
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_001, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_112
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
