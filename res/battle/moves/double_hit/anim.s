#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, double_hit_spa
    PlaySoundEffectR SEQ_SE_DP_030
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 2752, 1376, 0
    CreateEmitter 0, 4, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 2752, 1376, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 2752, 1376, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 15
    PlaySoundEffectR SEQ_SE_DP_030
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, -2752, 1376, 0
    CreateEmitter 0, 5, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, -2752, 1376, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, -2752, 1376, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
