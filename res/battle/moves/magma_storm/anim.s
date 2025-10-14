#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, magma_storm_spa
    LoadParticleResource 1, magma_storm_spa
    LoadParticleResource 2, magma_storm_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    SwitchBg 43, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlaySoundEffectR SEQ_SE_DP_W463
    CreateEmitterEx 0, 0, 0, 3
    Func_RevolveEmitter 0, 0, 360, 0, 360, 64, 48, 40, 1, 0
    CreateEmitterEx 0, 1, 1, 3
    Func_RevolveEmitter 1, 0, 360, 0, 360, 64, 48, 40, 1, 0
    CreateEmitterEx 0, 2, 2, 3
    Func_RevolveEmitter 2, 0, 360, 0, 360, 64, 48, 40, 1, 0
    Delay 5
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 3, BATTLE_COLOR_RED, 10, 10
    CreateEmitterEx 0, 3, 0, 3
    Func_RevolveEmitter 3, 0, 360, 0, 360, 64, 48, 40, 1, 0
    CreateEmitterEx 0, 4, 1, 3
    Func_RevolveEmitter 4, 0, 360, 0, 360, 64, 48, 40, 1, 0
    CreateEmitterEx 0, 5, 2, 3
    Func_RevolveEmitter 5, 0, 360, 0, 360, 64, 48, 40, 1, 0
    Delay 5
    CreateEmitterEx 1, 0, 0, 3
    Func_RevolveEmitter 0, 0, 360, 0, 360, 64, 48, 40, 1, 1
    CreateEmitterEx 1, 1, 1, 3
    Func_RevolveEmitter 1, 0, 360, 0, 360, 64, 48, 40, 1, 1
    CreateEmitterEx 1, 2, 2, 3
    Func_RevolveEmitter 2, 0, 360, 0, 360, 64, 48, 40, 1, 1
    Delay 5
    CreateEmitterEx 1, 3, 0, 3
    Func_RevolveEmitter 3, 0, 360, 0, 360, 64, 48, 40, 1, 1
    CreateEmitterEx 1, 4, 1, 3
    Func_RevolveEmitter 4, 0, 360, 0, 360, 64, 48, 40, 1, 1
    CreateEmitterEx 1, 5, 2, 3
    Func_RevolveEmitter 5, 0, 360, 0, 360, 64, 48, 40, 1, 1
    Delay 5
    CreateEmitterEx 2, 0, 0, 3
    Func_RevolveEmitter 0, 0, 360, 0, 360, 64, 48, 40, 1, 2
    CreateEmitterEx 2, 1, 1, 3
    Func_RevolveEmitter 1, 0, 360, 0, 360, 64, 48, 40, 1, 2
    CreateEmitterEx 2, 2, 2, 3
    Func_RevolveEmitter 2, 0, 360, 0, 360, 64, 48, 40, 1, 2
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
