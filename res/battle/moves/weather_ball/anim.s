#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, weather_ball_spa
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 100, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    PlaySoundEffectL SEQ_SE_DP_W207
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Delay 25
    PlaySoundEffectC SEQ_SE_DP_W197
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Delay 10
    JumpIfWeather L_1, L_2, L_3, L_4, L_5
    End

L_1:
    PlayLoopedSoundEffectR SEQ_SE_DP_W172, 2, 7
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 8, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectL SEQ_SE_DP_W152
    Delay 20
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_4:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 10, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    PlayLoopedSoundEffectR SEQ_SE_DP_W172, 2, 7
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 9, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectL SEQ_SE_DP_W152
    Delay 20
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 10, 0, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    End

L_2:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 10, BATTLE_COLOR_TEAL_GREEN
    WaitForAnimTasks
    PlayLoopedSoundEffectR SEQ_SE_DP_W172, 2, 7
    CreateEmitter 0, 5, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 10, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectL SEQ_SE_DP_W152
    Delay 20
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 10, 0, BATTLE_COLOR_TEAL_GREEN
    WaitForAnimTasks
    End

L_5:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 10, BATTLE_COLOR_GRAY
    WaitForAnimTasks
    PlayLoopedSoundEffectR SEQ_SE_DP_W172, 2, 7
    CreateEmitter 0, 6, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 11, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectL SEQ_SE_DP_W152
    Delay 20
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 10, 0, BATTLE_COLOR_GRAY
    WaitForAnimTasks
    End

L_3:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 10, BATTLE_COLOR_YELLOW
    WaitForAnimTasks
    PlayLoopedSoundEffectR SEQ_SE_DP_W172, 2, 7
    CreateEmitter 0, 7, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 12, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectL SEQ_SE_DP_W152
    Delay 20
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 10, 0, BATTLE_COLOR_YELLOW
    WaitForAnimTasks
    End
