#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, toxic_spikes_spa
    PlayLoopedSoundEffectR SEQ_SE_DP_W026, 6, 5
    CreateEmitterEx 0, 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 0, 8, -3, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 1, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 1, 4, -5, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 2, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 2, 0, -6, 0, 12, 64
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER_SIDE
    Delay 5
    CreateEmitterEx 0, 3, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 3, -8, -6, 0, 12, 64
    Delay 5
    CreateEmitterEx 0, 4, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 4, -8, -6, 0, 12, 64
    Delay 5
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER_SIDE
    Delay 10
    PlayLoopedSoundEffectR SEQ_SE_DP_W092D, 4, 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
