#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, aeroblast_spa
    SwitchBg 25, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    Func_ShakeBg 0, 4, 0, 28, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_LEFT, 2, 5
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 22
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_KAZE, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 18
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    RestoreBg 25, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
