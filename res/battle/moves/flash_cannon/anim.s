#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, flash_cannon_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffectL SEQ_SE_DP_W082, 3, 10
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 6, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 7, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    Delay 90
    PlayLoopedSoundEffectR SEQ_SE_DP_161, 2, 2
    CreateEmitter 0, 0, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 10, 64
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_400
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 1, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
