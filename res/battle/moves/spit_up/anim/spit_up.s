#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 272
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    Func_ShakeAndScaleAttacker 70, 120, 10, 5, 15
    Delay 25
    PlayLoopedSoundEffect SEQ_SE_DP_W255E, BATTLE_SOUND_PAN_LEFT, 5, 2
    CreateEmitter 0, 0, 3
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    Delay 15
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 2, 3
    Func_Shake 2, 0, 1, 4, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
