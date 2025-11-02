#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, water_pulse_spa
    LoadParticleResource 1, water_pulse_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 35, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForPartialBgSwitch
    Func_ScrollSwitchedBg 75
    WaitForBgSwitch
    Call L_1
    PlayLoopedSoundEffectC SEQ_SE_DP_W145C, 4, 6
    Delay 5
    CreateEmitterEx 1, 0, 2, 3
    Func_MoveEmitterA2BLinear 0, 0, 0, 0, 12, 64
    Delay 10
    PlayLoopedSoundEffectR SEQ_SE_DP_W202, 2, 3
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_CYAN, 14, 0
    Delay 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 35, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

L_1:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, 5504, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, 5504, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 11008, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 11008, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 22016, 5504, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 22016, 5504, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, -11008, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, -11008, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, -27520, 5504, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, -27520, 5504, 0
    Delay 1
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -11008, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 11008, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 11008, -11008, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 22016, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, 22016, -11008, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, -11008, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, -11008, -11008, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, -27520, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 1, -27520, -11008, 0
    Delay 1
    Return
