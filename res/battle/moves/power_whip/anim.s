#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, power_whip_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 7, BATTLE_BG_SWITCH_MODE_FADE
    PlayPannedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_MUCHI, BATTLE_SOUND_PAN_RIGHT, 10
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 10
    Func_Shake 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 7, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
