#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 120
    InitSpriteManager 0, 1, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, 2
    LoadPlttRes 0, 2, 1
    LoadCellResObj 0, 2
    LoadAnimResObj 0, 2
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SwitchBg 53, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    PlayPannedSoundEffect SEQ_SE_DP_W090, 0
    Func_Shake 4, 0, 1, 30, 264
    Func_ShakeBg 8, 0, 0, 31, 0
    AddSpriteWithFunc 0, 27, 2, 2, 2, 2, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    RestoreBg 53, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
