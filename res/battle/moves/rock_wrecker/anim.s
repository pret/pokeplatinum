#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rock_wrecker_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_BLEND_TYPE, 0
    SwitchBg 39, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlaySoundEffectL SEQ_SE_DP_W082
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 2, 1, 1, 0, 0
    Delay 30
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W120, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_BLEND_TYPE, 0
    RestoreBg 39, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
