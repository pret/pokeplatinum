#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, ice_fang_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 8, BATTLE_COLOR_LIGHT_BLUE
    PlayDelayedSoundEffect SEQ_SE_DP_W044, BATTLE_SOUND_PAN_RIGHT, 6
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_150, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 8, 0, BATTLE_COLOR_LIGHT_BLUE
    WaitForAnimTasks
    End
