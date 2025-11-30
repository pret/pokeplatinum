#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, seed_flare_spa
    PlaySoundEffectL SEQ_SE_DP_SHUSHU
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 13, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Delay 40
    PlaySoundEffectC SEQ_SE_DP_W465
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 13, 0, BATTLE_COLOR_WHITE
    Func_ShakeBg 4, 4, 0, 10, 0
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
