#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, thunder_shock_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W085
    PlayDelayedSoundEffectR SEQ_SE_DP_W063B, 13
    CreateEmitter 0, 0, 4
    Delay 5
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_BLACK, 15, 0
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
