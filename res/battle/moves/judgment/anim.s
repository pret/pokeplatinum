#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, judgment_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 15, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    PlaySoundEffectR SEQ_SE_DP_W460
    Delay 10
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W082B
    WaitForAnimTasks
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 15, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    End
