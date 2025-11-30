#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, softboiled_spa
    PlaySoundEffectL SEQ_SE_DP_112
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    PlayDelayedSoundEffectL SEQ_SE_DP_W030, 40
    Delay 40
    PlayDelayedSoundEffectL SEQ_SE_DP_W071B, 5
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
