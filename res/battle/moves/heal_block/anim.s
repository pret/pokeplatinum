#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, heal_block_spa
    PlaySoundEffectR SEQ_SE_DP_W377
    CreateEmitter 0, 0, 20
    Delay 30
    Func_SetBgGrayscale TRUE
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_BLACK, 10, 15
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 1, BATTLE_COLOR_BLACK, 10, 15
    WaitForAnimTasks
    Func_SetBgGrayscale FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
