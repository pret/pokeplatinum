#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 484
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    PlayPannedSoundEffect SEQ_SE_DP_W467, BATTLE_SOUND_PAN_LEFT
    CallFunc 50, 2, 5, 0
    Delay 2
    CallFunc 74, 1, 1
    WaitForAnimTasks
    CallFunc 40, 2, 2, 1
    Delay 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 74, 1, 0
    WaitForAnimTasks
    End

L_2:
    CallFunc 74, 1, 1
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_W007, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 4, 0, 1, 2, 264
    Delay 5
    PlayDelayedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_RIGHT, 8
    PlayDelayedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_RIGHT, 13
    CallFunc 50, 2, 5, 0
    WaitForAnimTasks
    CallFunc 40, 2, 2, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 74, 1, 0
    WaitForAnimTasks
    End
