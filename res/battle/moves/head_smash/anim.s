#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, head_smash_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 40, BATTLE_BG_SWITCH_MODE_FADE
    PlayPannedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 258, 14, -8, 2
    WaitForAnimTasks
    Func_ShakeBg 4, 4, 0, 10, 0
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler 258, -14, 8, 2
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 14, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 40, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
