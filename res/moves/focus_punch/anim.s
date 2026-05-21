#include "macros/btlanimcmd.inc"

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, focus_punch_spa
    PlaySoundEffectL SEQ_SE_DP_W082
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, focus_punch_spa
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 5, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W025B
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 31, BATTLE_BG_SWITCH_MODE_FADE
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 16, -8, 2
    Delay 10
    Func_ShakeBg 5, 0, 1, 6, 0
    Func_Shake 4, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 31, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
