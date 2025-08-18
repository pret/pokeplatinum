#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 154
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 4, -24, 0, 258
    WaitForAnimTasks
    CallFunc 4, 6, 65535, 68265, 10, 1, 0, 64
    WaitForAnimTasks
    CallFunc 57, 4, 4, 24, 0, 258
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 4, -24, 0, 258
    WaitForAnimTasks
    CallFunc 4, 4, 65535, 68265, 10, 1
    WaitForAnimTasks
    CallFunc 57, 4, 4, 38, -8, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 6, 0, 1, 6, 264
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
