#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, selfdestruct_spa
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 2
    SwitchBg 21, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    Func_ShakeBg 8, 8, 0, 20, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W120, 2, 10
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Delay 20
    PlaySoundEffectL SEQ_SE_DP_W120
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITES | BATTLE_ANIM_NOT_ATTACKER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 2
    RestoreBg 21, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
