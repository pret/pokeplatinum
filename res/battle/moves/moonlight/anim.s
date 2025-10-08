#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, moonlight_spa
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SwitchBg 54, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlaySoundEffectC SEQ_SE_DP_W236
    CreateEmitter 0, 0, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    RestoreBg 54, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
