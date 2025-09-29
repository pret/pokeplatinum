#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, dynamic_punch_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 1, BATTLE_BG_SWITCH_MODE_FADE
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W233B, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    Func_Shake 1, 0, 1, 2, 264
    Delay 2
    Func_FadeBattlerSprite 8, 0, 2, 2124, 14, 0
    Func_ShakeBg 5, 0, 1, 6, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W120, BATTLE_SOUND_PAN_RIGHT, 4, 6
    Delay 3
    Func_Shake 4, 0, 1, 10, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 1, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
