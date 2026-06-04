#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, giga_drain_spa
    PlayLoopedSoundEffectC SEQ_SE_DP_W202, 2, 18
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 1, 16, 0
    SetExtraParams 2, 0, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Delay 60
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    PlaySoundEffectL SEQ_SE_DP_W071B
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
