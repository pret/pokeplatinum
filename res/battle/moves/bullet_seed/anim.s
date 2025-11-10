#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, bullet_seed_spa
    PlayLoopedSoundEffectC SEQ_SE_DP_W202B, 3, 9
    CreateEmitterEx 0, 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 1, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 2, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitterEx 0, 2, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 2, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 3, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 3, 0, 0, 0, 10, 64
    PlayLoopedSoundEffectR SEQ_SE_DP_W025B, 5, 6
    Delay 2
    CreateEmitterEx 0, 4, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 4, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 5, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 5, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 6, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 6, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 7, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 7, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 1, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 10, 64
    Delay 2
    CreateEmitterEx 0, 2, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 2, 0, 0, 0, 10, 64
    Delay 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
