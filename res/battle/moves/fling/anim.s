#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fling_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W374, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 14, 64
    Delay 13
    PlaySoundEffectR SEQ_SE_DP_186
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
