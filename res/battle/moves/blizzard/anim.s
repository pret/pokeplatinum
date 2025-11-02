#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, blizzard_spa
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -20
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_BLEND_TYPE, 0
    SwitchBg 50, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    PlaySoundEffectC SEQ_SE_DP_KAZE
    WaitForBgSwitch
    CreateEmitter 0, 3, 0
    PlaySoundEffectC SEQ_SE_DP_W059
    CreateEmitter 0, 1, 20
    Delay 4
    PlaySoundEffectR SEQ_SE_DP_151
    Delay 12
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 2, 20
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    Delay 15
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -20
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_BLEND_TYPE, 0
    RestoreBg 50, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    StopSoundEffect SEQ_SE_DP_KAZE
    StopSoundEffect SEQ_SE_DP_W059
    WaitForBgSwitch
    End

L_2:
    PlaySoundEffectC SEQ_SE_DP_KAZE
    WaitForBgSwitch
    CreateEmitter 0, 4, 0
    PlaySoundEffectC SEQ_SE_DP_W059
    CreateEmitter 0, 1, 20
    Delay 4
    PlaySoundEffectR SEQ_SE_DP_151
    Delay 12
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 2, 20
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    Delay 15
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -20
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_BLEND_TYPE, 0
    RestoreBg 50, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    StopSoundEffect SEQ_SE_DP_KAZE
    StopSoundEffect SEQ_SE_DP_W059
    WaitForBgSwitch
    End
