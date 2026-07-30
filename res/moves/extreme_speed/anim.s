#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 1, pound_spa
    LoadParticleResource 0, extreme_speed_spa
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 47, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    WaitForBgSwitch
    Delay 1
    Func_BlinkAttacker 5, 0
    PlaySoundEffectL SEQ_SE_DP_W013B
    Func_Teleport
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    WaitForAnimTasks
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    BeginLoop 3
    PlaySoundEffectR SEQ_SE_DP_030
    CreateEmitter 1, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_MoveBattlerX 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    Func_Shake 1, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    EndLoop
    PlayLoopedSoundEffectL SEQ_SE_DP_W104, 2, 2
    Func_MoveBattlerX2 4, -24, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    Func_BlinkAttacker 5, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 47, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End
