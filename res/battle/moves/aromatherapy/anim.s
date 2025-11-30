#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, aromatherapy_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_LIME
    WaitForAnimTasks
    PlaySoundEffectC SEQ_SE_DP_W080
    Delay 60
    PlaySoundEffectL SEQ_SE_DP_W234
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_LIME
    WaitForAnimTasks
    PlayDelayedSoundEffectL SEQ_SE_DP_REAPOKE, 23
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER_SIDE
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER_SIDE
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
