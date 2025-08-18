#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 299
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W233, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CallFunc 57, 4, 2, -14, 8, 258
    Delay 5
    CallFunc 36, 5, 0, 4, 1, 1, 264
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W004, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
