#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, rock_polish_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_BRADE, BATTLE_SOUND_PAN_LEFT, 4, 8
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    PlayDelayedSoundEffect SEQ_SE_DP_W234, BATTLE_SOUND_PAN_LEFT, 35
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
