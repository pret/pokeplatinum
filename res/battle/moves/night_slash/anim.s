#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, night_slash_spa
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    PlaySoundEffectC SEQ_SE_DP_BRADE
    PlayDelayedSoundEffectC SEQ_SE_DP_W233, 10
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Delay 11
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 10
    PlaySoundEffectC SEQ_SE_DP_BRADE
    PlayDelayedSoundEffectC SEQ_SE_DP_W233, 10
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Delay 8
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
