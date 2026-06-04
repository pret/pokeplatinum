#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fury_cutter_spa
    BeginLoop 2
    PlaySoundEffectC SEQ_SE_DP_W043
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    EndLoop
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 5
    Func_Shake 0, 2, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W013
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
