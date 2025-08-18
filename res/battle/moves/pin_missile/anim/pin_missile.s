#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfContest L_1
    JumpIfBattlerSide 0, L_2, L_1
    End

L_2:
    LoadParticleResource 0, 72
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W026, BATTLE_SOUND_PAN_LEFT, 4, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 13
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 28
    CreateEmitterEx 0, 1, 2, 3
    CallFunc 66, 6, 1, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitterEx 0, 2, 2, 3
    CallFunc 66, 6, 2, 0, 0, 0, 13, 64
    Delay 3
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 1, 264
    CreateEmitterEx 0, 3, 2, 3
    CallFunc 66, 6, 3, 0, 0, 0, 13, 64
    Delay 5
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 1, 264
    Delay 5
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 2, 0, 1, 3, 264
    CallFunc 57, 4, 2, -14, 8, 258
    Delay 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    LoadParticleResource 0, 72
    CallFunc 57, 4, 2, 14, -8, 258
    WaitForAnimTasks
    PlayLoopedSoundEffect SEQ_SE_DP_W026, BATTLE_SOUND_PAN_LEFT, 4, 3
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 13
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT, 28
    CreateEmitterEx 0, 1, 3, 3
    CallFunc 66, 6, 1, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitterEx 0, 2, 3, 3
    CallFunc 66, 6, 2, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    CreateEmitterEx 0, 3, 3, 3
    CallFunc 66, 6, 3, 0, 0, 0, 13, 64
    Delay 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 4
    CallFunc 57, 4, 2, -14, 8, 258
    Delay 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
