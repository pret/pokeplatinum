#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, silver_wind_spa
    PlaySoundEffectC SEQ_SE_DP_W016
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 0, 0, 0, 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 0, 0, 0, 0
    PlaySoundEffectC SEQ_SE_DP_W234
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    StopSoundEffect SEQ_SE_DP_W016
    StopSoundEffect SEQ_SE_DP_W234
    End
