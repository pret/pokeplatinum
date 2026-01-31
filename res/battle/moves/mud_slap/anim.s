#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mud_slap_spa
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    PlayLoopedSoundEffectC SEQ_SE_DP_W028, 4, 6
    Delay 20
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_GRAY, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
