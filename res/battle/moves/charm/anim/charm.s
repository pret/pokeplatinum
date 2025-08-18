#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 222
    CreateEmitter 0, 0, 3
    CallFunc 25, 0
    BeginLoop 3
    PlayPannedSoundEffect SEQ_SE_DP_W204, BATTLE_SOUND_PAN_LEFT
    Delay 8
    EndLoop
    PlayPannedSoundEffect SEQ_SE_DP_W204, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
