#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, giga_impact_spa
    PlaySoundEffectL SEQ_SE_DP_131
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    WaitForAnimTasks
    Delay 15
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 5, BATTLE_BG_SWITCH_MODE_FADE
    PlaySoundEffectL SEQ_SE_DP_140
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 32, -16, 4
    WaitForAnimTasks
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_161
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_ShakeBg 0, 5, 0, 5, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 5, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
