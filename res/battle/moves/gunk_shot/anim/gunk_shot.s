#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 458
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 13, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_MOVE
    WaitForBgSwitch
    PlayPannedSoundEffect SEQ_SE_DP_290, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 0, 0
    CreateEmitter 0, 2, 3
    Delay 45
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_293, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 3, 4
    CallFunc 34, 6, 8, 0, 1, 31764, 10, 0
    CallFunc 36, 5, 2, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 13, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_STOP
    WaitForBgSwitch
    End
