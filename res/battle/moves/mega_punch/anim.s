#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mega_punch_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffectR SEQ_SE_DP_140, 1
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
