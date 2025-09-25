#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, mist_ball_spa
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 10, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlayLoopedSoundEffect SEQ_SE_DP_W081, 0, 2, 4
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 15
    PlayLoopedSoundEffect SEQ_SE_DP_W028, BATTLE_SOUND_PAN_RIGHT, 2, 4
    Func_FadeBg 0, 1, 0, 8, 32767
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 6, 4
    Func_Shake 1, 0, 1, 2, 264
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    CreateEmitter 0, 1, 0
    CreateEmitter 0, 2, 0
    WaitForAnimTasks
    Func_FadeBg 0, 1, 8, 0, 32767
    Func_FadeBattlerSprite 8, 0, 1, 32767, 10, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_186, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 10, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

L_2:
    CreateEmitter 0, 3, 0
    CreateEmitter 0, 4, 0
    WaitForAnimTasks
    Func_FadeBg 0, 1, 8, 0, 32767
    Func_FadeBattlerSprite 8, 0, 1, 32767, 10, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_186, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 10, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
