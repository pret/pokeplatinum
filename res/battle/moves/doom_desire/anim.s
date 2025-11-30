#include "macros/btlanimcmd.inc"

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_GRAY, 10, 0
    Func_Growth
    PlaySoundEffectL SEQ_SE_DP_W060
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

L_2:
    LoadParticleResource 0, doom_desire_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 16, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    PlaySoundEffectC SEQ_SE_DP_W466
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 0, 0, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 0, 0, 0, 0
    Delay 30
    PlayLoopedSoundEffectR SEQ_SE_DP_W120, 6, 5
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Func_Shake 4, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 16, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    End
