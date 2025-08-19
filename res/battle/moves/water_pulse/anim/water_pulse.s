#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 369
    LoadParticleResource 1, 369
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 35, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    WaitForPartialBgSwitch
    CallFunc 76, 1, 75
    WaitForBgSwitch
    Call L_1
    PlayLoopedSoundEffect SEQ_SE_DP_W145C, 0, 4, 6
    Delay 5
    CreateEmitterEx 1, 0, 2, 3
    CallFunc 65, 6, 0, 0, 0, 0, 12, 64
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W202, BATTLE_SOUND_PAN_RIGHT, 2, 3
    CallFunc 36, 5, 2, 0, 1, 2, 264
    CallFunc 34, 6, 8, 0, 1, 32720, 14, 0
    Delay 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVar
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 35, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    End

L_1:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, 5504, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, 5504, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 11008, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 11008, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 22016, 5504, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 22016, 5504, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -11008, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -11008, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -27520, 5504, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -27520, 5504, 0
    Delay 1
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 0, -11008, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 11008, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 11008, -11008, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 22016, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 22016, -11008, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -11008, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -11008, -11008, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -27520, -11008, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 0, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -27520, -11008, 0
    Delay 1
    Return
