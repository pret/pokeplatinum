#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, thunder_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SwitchBg 19, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -2064, 0
    Delay 5
    Func_ShakeBg 3, 0, 1, 1, 0, SHAKE_BG_TARGET_BASE
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_BLACK, 15, 0
    Func_FadeBg FADE_BG_TYPE_EFFECT, -4, 0, 12, BATTLE_COLOR_WHITE
    PlaySoundEffectR SEQ_SE_DP_W161B
    Delay 10
    Func_FadeBg FADE_BG_TYPE_EFFECT, -4, 12, 0, BATTLE_COLOR_WHITE
    Func_Shake 0, 1, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    RestoreBg 19, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
