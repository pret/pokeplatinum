#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, ice_beam_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 8, BATTLE_COLOR_LIGHT_BLUE
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_025, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 8, 0, BATTLE_COLOR_LIGHT_BLUE
    WaitForAnimTasks
    End
