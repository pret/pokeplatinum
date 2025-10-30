#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sheer_cold_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffectC SEQ_SE_DP_W258, 4, 12
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 0, 0, 0, 0
    CreateEmitter 0, 2, 4
    Delay 15
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_WHITE, 10, 10
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
