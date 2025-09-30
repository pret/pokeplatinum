#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, guillotine_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 4, 4
    PlaySoundEffectR SEQ_SE_DP_W011
    Delay 20
    PlaySoundEffectR SEQ_SE_PL_W012
    Func_Shake 3, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
