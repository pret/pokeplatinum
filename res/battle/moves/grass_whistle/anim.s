#include "macros/btlanimcmd.inc"

L_0:
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    LoadParticleResource 0, grass_whistle_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 8, BATTLE_COLOR_LIGHT_GREEN
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 24, 18, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W320, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 8, 0, BATTLE_COLOR_LIGHT_GREEN
    WaitForAnimTasks
    End

L_2:
    LoadParticleResource 0, grass_whistle_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 8, BATTLE_COLOR_LIGHT_GREEN
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 24, 18, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W320, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 8, 0, BATTLE_COLOR_LIGHT_GREEN
    WaitForAnimTasks
    End
