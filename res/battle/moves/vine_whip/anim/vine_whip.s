#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 52
    CallFunc 52, 3, 3, 24, 258
    WaitForAnimTasks
    CallFunc 52, 3, 3, -24, 258
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_MUCHI, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    CallFunc 36, 5, 1, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_PASA2, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
