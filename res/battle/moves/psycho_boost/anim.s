#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, psycho_boost_spa
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 5, 3
    CreateEmitter 0, 0, 3
    PlayPannedSoundEffect SEQ_SE_DP_W376, BATTLE_SOUND_PAN_LEFT
    Delay 60
    Func_FadeBattlerSprite 2, 0, 1, 32767, 10, 50
    Delay 60
    PlayPannedSoundEffect SEQ_SE_DP_W379, BATTLE_SOUND_PAN_LEFT
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 4, BATTLE_BG_SWITCH_MODE_FADE
    Delay 5
    Func_FadeBattlerSprite 8, 0, 1, 32767, 10, 10
    PlayDelayedSoundEffect SEQ_SE_DP_480, BATTLE_SOUND_PAN_RIGHT, 10
    PlayDelayedSoundEffect SEQ_SE_DP_400, BATTLE_SOUND_PAN_RIGHT, 15
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Func_Shake 4, 0, 1, 8, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 4, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
