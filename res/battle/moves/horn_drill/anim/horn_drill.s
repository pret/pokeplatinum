#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 62
    JumpIfContest L_1
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_145, BATTLE_SOUND_PAN_RIGHT, 5
    JumpIfBattlerSide 0, L_2, L_3
    End

L_1:
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_145, BATTLE_SOUND_PAN_RIGHT, 5
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 8, 4
    CallFunc 36, 5, 1, 0, 1, 12, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    End

L_2:
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 6, 4
    CallFunc 36, 5, 1, 0, 1, 12, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    End

L_3:
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 7, 4
    CallFunc 36, 5, 1, 0, 1, 12, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    End
