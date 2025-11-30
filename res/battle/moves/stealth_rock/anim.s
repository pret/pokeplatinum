#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, stealth_rock_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 0, 8, -3, 0, 12, 64
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 1, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 1, 4, -5, 0, 12, 64
    Delay 5
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER_SIDE
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 2, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 2, 0, -6, 0, 12, 64
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 3, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 3, -8, -6, 0, 12, 64
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W070, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 4, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 4, -4, -3, 0, 12, 64
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
