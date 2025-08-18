#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 228
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W043, 0
    CallFunc 33, 5, 0, 0, 0, 8, 0
    WaitForAnimTasks
    CallFunc 33, 5, 0, 0, 8, 0, 0
    WaitForAnimTasks
    EndLoop
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Delay 5
    CallFunc 36, 5, 0, 2, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
