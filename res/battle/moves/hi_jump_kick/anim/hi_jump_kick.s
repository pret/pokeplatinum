#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 159
    PlayPannedSoundEffect SEQ_SE_DP_W026, BATTLE_SOUND_PAN_LEFT
    CallFunc 52, 3, 3, 24, 258
    WaitForAnimTasks
    CallFunc 52, 3, 3, -24, 258
    PlayPannedSoundEffect SEQ_SE_DP_W233B, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 3, -24, 264
    CreateEmitter 0, 1, 4
    WaitForAnimTasks
    CallFunc 52, 3, 3, 24, 264
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
