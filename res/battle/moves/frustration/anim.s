#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, frustration_spa
    Func_FadeBattlerSprite 2, 0, 1, BATTLE_COLOR_RED, 10, 10
    PlayPannedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    Func_Flail 0
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, 264
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 2, 3
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
