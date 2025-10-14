#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, volt_tackle_spa
    SwitchBg 27, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    Func_ShakeBg 1, 1, 0, 25, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W120, 2, 4
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    Delay 10
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W085C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    Delay 10
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W085C, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    CreateEmitter 0, 5, 0
    CreateEmitter 0, 6, 0
    Delay 10
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W085C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    Delay 40
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    PlayLoopedSoundEffectR SEQ_SE_DP_W085B, 3, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    RestoreBg 27, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
