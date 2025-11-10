#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, seismic_toss_spa
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 26
    SwitchBg 51, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlaySoundEffectC SEQ_SE_DP_W327
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 22
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 11
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 7
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 4
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -6
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -13
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -21
    Delay 5
    SetBgSwitchVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -34
    PlaySoundEffectR SEQ_SE_DP_W070
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_ShakeBg 0, 5, 1, 3, 0
    Delay 10
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -34
    RestoreBg 51, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    PlaySoundEffectR SEQ_SE_DP_W088
    WaitForBgSwitch
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
