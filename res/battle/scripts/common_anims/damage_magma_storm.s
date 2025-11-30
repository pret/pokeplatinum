#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 480
    LoadParticleResource 1, 480
    LoadParticleResource 2, 480
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    SwitchBg 43, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlayPannedSoundEffect SEQ_SE_DP_W463, BATTLE_SOUND_PAN_LEFT
    CreateEmitterEx 0, 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 0, 0, 360, 0, 360, 64, 48, 40, 0, 0
    CreateEmitterEx 0, 1, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 1, 0, 360, 0, 360, 64, 48, 40, 0, 0
    CreateEmitterEx 0, 2, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 2, 0, 360, 0, 360, 64, 48, 40, 0, 0
    Delay 5
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 3, BATTLE_COLOR_RED, 10, 10
    CreateEmitterEx 0, 3, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 3, 0, 360, 0, 360, 64, 48, 40, 0, 0
    CreateEmitterEx 0, 4, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 4, 0, 360, 0, 360, 64, 48, 40, 0, 0
    CreateEmitterEx 0, 5, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 5, 0, 360, 0, 360, 64, 48, 40, 0, 0
    Delay 5
    CreateEmitterEx 1, 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 0, 0, 360, 0, 360, 64, 48, 40, 0, 1
    CreateEmitterEx 1, 1, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 1, 0, 360, 0, 360, 64, 48, 40, 0, 1
    CreateEmitterEx 1, 2, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 2, 0, 360, 0, 360, 64, 48, 40, 0, 1
    Delay 5
    CreateEmitterEx 1, 3, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 3, 0, 360, 0, 360, 64, 48, 40, 0, 1
    CreateEmitterEx 1, 4, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 4, 0, 360, 0, 360, 64, 48, 40, 0, 1
    CreateEmitterEx 1, 5, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 5, 0, 360, 0, 360, 64, 48, 40, 0, 1
    Delay 5
    CreateEmitterEx 2, 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 0, 0, 360, 0, 360, 64, 48, 40, 0, 2
    CreateEmitterEx 2, 1, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 1, 0, 360, 0, 360, 64, 48, 40, 0, 2
    CreateEmitterEx 2, 2, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveEmitter 2, 0, 360, 0, 360, 64, 48, 40, 0, 2
    Delay 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    UnloadParticleSystem 2
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    RestoreBg 43, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
