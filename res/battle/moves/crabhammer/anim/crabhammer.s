#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 173
    PlayPannedSoundEffect SEQ_SE_DP_W233B, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CallFunc 33, 5, 0, 0, 0, 8, 49930
    WaitForAnimTasks
    CallFunc 33, 5, 0, 0, 8, 0, 49930
    PlayPannedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 0, 4, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
