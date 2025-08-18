#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfContest L_1
    JumpIfBattlerSide 0, L_2, L_3
    End

L_1:
    LoadParticleResource 0, 60
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CallFunc 57, 4, 2, -14, 8, 258
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, 60
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CallFunc 57, 4, 2, -14, 8, 258
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    LoadParticleResource 0, 60
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CallFunc 57, 4, 2, -14, 8, 258
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
