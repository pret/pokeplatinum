#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 181
    LoadParticleResource 1, 181
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W161, BATTLE_SOUND_PAN_LEFT, 8, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 7, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 2, 18, 12, 0, 0
    Delay 40
    PlayPannedSoundEffect SEQ_SE_DP_W172B, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_W161B, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 6, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_W280, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
