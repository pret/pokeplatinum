#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, flare_blitz_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    PlayLoopedSoundEffectL SEQ_SE_DP_W052, 3, 6
    Delay 25
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 16, -8, 2
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 2
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 33, BATTLE_BG_SWITCH_MODE_FADE
    Delay 5
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_186
    Delay 2
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_DARK_RED2, 14, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 33, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
