#include "macros/btlanimcmd.inc"

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    LoadParticleResource 0, encore_spa
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlaySoundEffectR SEQ_SE_DP_W227B
    BeginLoop 5
    PlaySoundEffectR SEQ_SE_DP_W227
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, 8, 4
    Delay 4
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, -8, 4
    Delay 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
