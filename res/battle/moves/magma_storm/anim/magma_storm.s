#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 480
    LoadParticleResource 1, 480
    LoadParticleResource 2, 480
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    SwitchBg 43, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_MOVE
    WaitForBgSwitch
    PlayPannedSoundEffect SEQ_SE_DP_W463, BATTLE_SOUND_PAN_RIGHT
    CreateEmitterEx 0, 0, 0, 3
    CallFunc 72, 10, 0, 0, 360, 0, 360, 64, 48, 40, 1, 0
    CreateEmitterEx 0, 1, 1, 3
    CallFunc 72, 10, 1, 0, 360, 0, 360, 64, 48, 40, 1, 0
    CreateEmitterEx 0, 2, 2, 3
    CallFunc 72, 10, 2, 0, 360, 0, 360, 64, 48, 40, 1, 0
    Delay 5
    CallFunc 34, 6, 8, 0, 3, 31, 10, 10
    CreateEmitterEx 0, 3, 0, 3
    CallFunc 72, 10, 3, 0, 360, 0, 360, 64, 48, 40, 1, 0
    CreateEmitterEx 0, 4, 1, 3
    CallFunc 72, 10, 4, 0, 360, 0, 360, 64, 48, 40, 1, 0
    CreateEmitterEx 0, 5, 2, 3
    CallFunc 72, 10, 5, 0, 360, 0, 360, 64, 48, 40, 1, 0
    Delay 5
    CreateEmitterEx 1, 0, 0, 3
    CallFunc 72, 10, 0, 0, 360, 0, 360, 64, 48, 40, 1, 1
    CreateEmitterEx 1, 1, 1, 3
    CallFunc 72, 10, 1, 0, 360, 0, 360, 64, 48, 40, 1, 1
    CreateEmitterEx 1, 2, 2, 3
    CallFunc 72, 10, 2, 0, 360, 0, 360, 64, 48, 40, 1, 1
    Delay 5
    CreateEmitterEx 1, 3, 0, 3
    CallFunc 72, 10, 3, 0, 360, 0, 360, 64, 48, 40, 1, 1
    CreateEmitterEx 1, 4, 1, 3
    CallFunc 72, 10, 4, 0, 360, 0, 360, 64, 48, 40, 1, 1
    CreateEmitterEx 1, 5, 2, 3
    CallFunc 72, 10, 5, 0, 360, 0, 360, 64, 48, 40, 1, 1
    Delay 5
    CreateEmitterEx 2, 0, 0, 3
    CallFunc 72, 10, 0, 0, 360, 0, 360, 64, 48, 40, 1, 2
    CreateEmitterEx 2, 1, 1, 3
    CallFunc 72, 10, 1, 0, 360, 0, 360, 64, 48, 40, 1, 2
    CreateEmitterEx 2, 2, 2, 3
    CallFunc 72, 10, 2, 0, 360, 0, 360, 64, 48, 40, 1, 2
    Delay 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    UnloadParticleSystem 2
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 32
    RestoreBg 43, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_STOP
    WaitForBgSwitch
    End
