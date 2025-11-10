#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, healing_wish_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    Delay 30
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    PlaySoundEffectL SEQ_SE_DP_W361
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

L_2:
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 2, 0, 0, 0
    PlaySoundEffectL SEQ_SE_DP_W361
    Delay 30
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
