#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 168
    BeginLoop 2
    Delay 6
    CallFunc 57, 4, 3, 24, 0, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W004, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 3, 264
    CallFunc 57, 4, 3, -24, 0, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W146, BATTLE_SOUND_PAN_RIGHT
    PlayLoopedSoundEffect SEQ_SE_DP_W146, BATTLE_SOUND_PAN_RIGHT, 4, 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
