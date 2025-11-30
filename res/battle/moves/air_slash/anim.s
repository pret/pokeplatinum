#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, air_slash_spa
    PlaySoundEffectR SEQ_SE_DP_BRADE
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_208
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_WHITE, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
