#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, power_gem_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlaySoundEffectL SEQ_SE_DP_W408
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    Delay 40
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_185, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 20
    PlayLoopedSoundEffectR SEQ_SE_DP_143, 4, 5
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
