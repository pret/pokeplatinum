#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 267
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 35, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForPartialBgSwitch
    Func_ScrollSwitchedBg 100
    WaitForBgSwitch
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    PlayPannedSoundEffect SEQ_SE_DP_W250, BATTLE_SOUND_PAN_LEFT
    Delay 5
    Func_Shake 2, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 35, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForAnimTasks
    WaitForBgSwitch
    End
