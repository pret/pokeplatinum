#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, defog_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlaySoundEffectC SEQ_SE_DP_BFBRADE
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 0, 0, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 0, 0, 0, 0
    Delay 30
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    Delay 15
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
