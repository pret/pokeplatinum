#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, flail_spa
    PlayLoopedSoundEffect SEQ_SE_DP_050, BATTLE_SOUND_PAN_LEFT, 3, 6
    Func_Flail 0
    CreateEmitter 0, 0, 3
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    Func_Flail 1, 2, 0, 0, 5
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
