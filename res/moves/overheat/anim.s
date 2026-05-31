#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, overheat_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 32, BATTLE_BG_SWITCH_MODE_FADE
    PlaySoundEffectL SEQ_SE_DP_W082
    Func_Shake 1, 0, 1, 5, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 10, 20
    Delay 10
    Delay 10
    PlaySoundEffectL SEQ_SE_DP_W172B
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 0, 0, 0
    Delay 15
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_DARK_YELLOW, 10, 15
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_DARK_YELLOW, 10, 15
    PlaySoundEffectC SEQ_SE_DP_W007
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 1, 1, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 32, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
