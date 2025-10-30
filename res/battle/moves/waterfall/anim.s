#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, waterfall_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -20
    SwitchBg 23, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForBgSwitch
    PlayLoopedSoundEffectL SEQ_SE_DP_W152, 2, 4
    CreateEmitter 0, 0, 3
    Func_Shake 1, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    PlaySoundEffectL SEQ_SE_DP_W291
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    CreateEmitter 0, 1, 4
    Delay 31
    PlaySoundEffectR SEQ_SE_DP_W127
    Delay 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_BLUE, 14, 0
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 1
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, -20
    RestoreBg 23, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
