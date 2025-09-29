#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, whirlpool_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 35, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForPartialBgSwitch
    Func_ScrollSwitchedBg 100
    WaitForBgSwitch
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    PlayPannedSoundEffect SEQ_SE_DP_W250, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_Shake 2, 0, 1, 10, 264
    Func_FadeBattlerSprite 8, 0, 2, 32720, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 35, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForAnimTasks
    WaitForBgSwitch
    End
