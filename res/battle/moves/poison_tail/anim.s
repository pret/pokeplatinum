#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, poison_tail_spa
    PlaySoundEffectR SEQ_SE_DP_BRADE
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 6
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 5
    PlayDelayedSoundEffectR SEQ_SE_DP_W092D, 10
    PlayDelayedSoundEffectR SEQ_SE_DP_W092D, 18
    PlayDelayedSoundEffectR SEQ_SE_DP_W092D, 26
    PlayDelayedSoundEffectR SEQ_SE_DP_W092D, 34
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 1, 1, BATTLE_COLOR_PURPLE, 12, 
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
