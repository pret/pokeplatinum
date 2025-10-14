#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, thunder_wave_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W085C
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 14, 0
    CreateEmitter 0, 2, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_W063B, 2
    Delay 47
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 14, 0
    PlayLoopedSoundEffectR SEQ_SE_DP_W063B, 2, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
