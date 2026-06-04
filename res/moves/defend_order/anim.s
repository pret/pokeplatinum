#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, defend_order_spa
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    PlayLoopedSoundEffectL SEQ_SE_DP_W456, 6, 12
    Delay 50
    PlaySoundEffectL SEQ_SE_DP_W109
    Delay 40
    PlaySoundEffectL SEQ_SE_DP_W082
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
