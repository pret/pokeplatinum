#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, roar_of_time_spa
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 5, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 6, 3
    PlaySoundEffectL SEQ_SE_DP_W459
    Delay 20
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    Delay 30
    PlaySoundEffectL SEQ_SE_DP_W060C
    Delay 20
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 12, 0, 0
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 0, 15, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W053
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Func_Shake 4, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Delay 20
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 15, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    StopSoundEffect SEQ_SE_DP_W053
    End
