#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    LoadParticleResource 0, 244
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_W227B, BATTLE_SOUND_PAN_RIGHT
    BeginLoop 5
    PlayPannedSoundEffect SEQ_SE_DP_W227, BATTLE_SOUND_PAN_RIGHT
    CallFunc 57, 4, 4, 0, 8, 264
    Delay 4
    CallFunc 57, 4, 4, 0, -8, 264
    Delay 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
