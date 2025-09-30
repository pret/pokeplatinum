#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, crabhammer_spa
    PlaySoundEffectR SEQ_SE_DP_W233B
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_TEAL_GREEN
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_TEAL_GREEN
    PlaySoundEffectR SEQ_SE_DP_W152
    Func_Shake 0, 4, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
