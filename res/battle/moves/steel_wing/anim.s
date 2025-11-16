#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, steel_wing_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 15
    PlaySoundEffectL SEQ_SE_DP_W231
    Delay 15
    PlaySoundEffectL SEQ_SE_DP_W231
    Delay 5
    PlaySoundEffectC SEQ_SE_DP_W017
    Delay 5
    PlaySoundEffectC SEQ_SE_DP_W017
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W017
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W017
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
