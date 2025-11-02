#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fly_spa
    LoadParticleResource 1, bounce_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    SwitchBg 55, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    PlaySoundEffectL SEQ_SE_DP_W327
    WaitForBgSwitch
    CreateEmitter 1, 1, 3
    CreateEmitter 1, 3, 3
    Delay 10
    PlaySoundEffectL SEQ_SE_DP_W019
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    RestoreBg 55, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

L_2:
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -32
    SwitchBg 55, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    PlaySoundEffectR SEQ_SE_DP_W327
    WaitForBgSwitch
    CreateEmitter 0, 3, 3
    Func_MoveEmitterViewportTop 0, EMITTER_ANIMATION_MODE_DEF_TO_ATK, EMITTER_ANIMATION_FROM_TOP, 10, 4
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W019
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 10
    CreateEmitter 0, 7, 4
    CreateEmitter 0, 8, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -32
    RestoreBg 55, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
