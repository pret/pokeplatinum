#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, milk_drink_spa
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W152_sseq
    Delay 25
    PlaySoundEffectR SEQ_SE_DP_052_sseq
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    PlayDelayedSoundEffectR SEQ_SE_DP_W071B_sseq, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
