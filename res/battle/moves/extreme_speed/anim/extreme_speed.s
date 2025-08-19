#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 1, 31
    LoadParticleResource 0, 262
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 47, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    CreateEmitter 0, 1, 4
    WaitForBgSwitch
    Delay 1
    CallFunc 50, 2, 5, 0
    PlayPannedSoundEffect SEQ_SE_DP_W013B, BATTLE_SOUND_PAN_LEFT
    CallFunc 15, 0
    CreateEmitter 0, 0, 3
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    BeginLoop 3
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 1, 1, 4
    CallFunc 51, 3, 1, 8, 264
    WaitForAnimTasks
    CallFunc 36, 5, 1, 0, 1, 4, 264
    WaitForAnimTasks
    EndLoop
    PlayLoopedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 2, 2
    CallFunc 52, 3, 4, -24, 264
    WaitForAnimTasks
    CallFunc 50, 2, 5, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 47, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
