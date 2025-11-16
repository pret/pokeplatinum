#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, zap_cannon_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 26, BATTLE_BG_SWITCH_MODE_FADE
    Delay 5
    PlayLoopedSoundEffectC SEQ_SE_DP_W086, 2, 3
    Func_ShakeBg 8, 8, 0, 20, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 5
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W085C
    PlayDelayedSoundEffectR SEQ_SE_DP_W085B, 25
    Func_Shake 4, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 14, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 26, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
