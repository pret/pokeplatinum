#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, supersonic_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitterEx 0, 1, 0, 3
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 14, 64
    Delay 10
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W048, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
