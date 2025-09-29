#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, hydro_pump_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SwitchBg 9, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 8, 1, 0, 0
    Func_ShakeBg 0, 3, 0, 20, 0
    Delay 2
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 10, 6, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 10, 6, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_SUIRYU, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 8
    Func_Shake 2, 0, 1, 14, 258
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite 8, 0, 1, 49930, 10, 25
    Func_Shake 2, 0, 1, 14, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    RestoreBg 9, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
