#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, overheat_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 32, BATTLE_BG_SWITCH_MODE_FADE
    PlayPannedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT
    Func_Shake 1, 0, 1, 5, 258
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_RED, 10, 20
    Delay 10
    Delay 10
    PlayPannedSoundEffect SEQ_SE_DP_W172B, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    Delay 15
    Func_Shake 1, 0, 1, 6, 258
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_DARK_YELLOW, 10, 15
    Func_Shake 1, 0, 1, 6, 264
    Func_FadeBattlerSprite 8, 0, 1, BATTLE_COLOR_DARK_YELLOW, 10, 15
    PlayPannedSoundEffect SEQ_SE_DP_W007, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 1, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 32, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
