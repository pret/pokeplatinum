#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, ice_punch_spa
    Func_FadeBg 0, 1, 0, 8, BATTLE_COLOR_LIGHT_BLUE
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W280, BATTLE_SOUND_PAN_RIGHT, 5
    Func_FadeBattlerSprite 8, 0, 2, BATTLE_COLOR_LIGHT_BLUE, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg 0, 1, 8, 0, BATTLE_COLOR_LIGHT_BLUE
    WaitForAnimTasks
    End
