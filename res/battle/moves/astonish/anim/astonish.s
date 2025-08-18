#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 327
    CallFunc 52, 3, 3, 24, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W280B, BATTLE_SOUND_PAN_RIGHT
    CallFunc 42, 8, 264, 100, 90, 100, 140, 100, 1, 327685
    Delay 1
    CallFunc 52, 3, 3, -24, 258
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W166, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
