#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, reversal_spa
    PlaySoundEffectL SEQ_SE_DP_W197
    BeginLoop 2
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 0, 8, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 8, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    EndLoop
    PlaySoundEffectL SEQ_SE_DP_W179
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 0, 0, 0
    Delay 40
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 0, 8, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 8, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 24, 0, 4
    WaitForAnimTasks
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    PlaySoundEffectR SEQ_SE_DP_W025B
    Func_Shake 1, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -24, 0, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
