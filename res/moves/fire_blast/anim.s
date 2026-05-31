#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, fire_blast_spa
    LoadParticleResource 1, fire_blast_spa
    CreateEmitter 0, 5, EMITTER_CB_SET_POS_TO_ATTACKER
    PlayLoopedSoundEffectL SEQ_SE_DP_W172, 4, 10
    Delay 20
    CreateEmitterEx 0, 1, 6, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BLinear 1, 0, 0, 0, 19, 64
    Delay 25
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 5
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 22, BATTLE_BG_SWITCH_MODE_FADE
    StopSoundEffect SEQ_SE_DP_W172
    PlaySoundEffectR SEQ_SE_DP_W172B
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W120
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_RED, 10, 0
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 22, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
