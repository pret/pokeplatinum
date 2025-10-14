#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, drain_punch_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 8, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_050
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 1, 16, 0
    BtlAnimCmd_055 2, 0, 0, 0, 0
    Delay 5
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 5
    PlayLoopedSoundEffectC SEQ_SE_DP_W152, 2, 16
    Delay 5
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 8, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
