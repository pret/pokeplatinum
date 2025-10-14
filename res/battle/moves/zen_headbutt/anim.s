#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, zen_headbutt_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlaySoundEffectL SEQ_SE_DP_293
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    WaitForAnimTasks
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    Delay 30
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 32, -16, 4
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_186
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
