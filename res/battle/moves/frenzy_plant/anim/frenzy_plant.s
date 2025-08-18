#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 355
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 16
    SwitchBg 34, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_MOVE
    WaitForBgSwitch
    PlayLoopedSoundEffect SEQ_SE_DP_W010, 0, 2, 16
    InitSpriteManager 0, 8, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 26
    LoadPlttRes 0, 25, 1
    LoadCellResObj 0, 26
    LoadAnimResObj 0, 26
    AddSpriteWithFunc 0, 24, 26, 25, 26, 26, 0, 0, 1, 8
    Delay 96
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 3, 6
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 2, 0, 1, 10, 264
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 16
    RestoreBg 34, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_STOP
    WaitForBgSwitch
    End
