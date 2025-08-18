#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, 143
    PlayLoopedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT, 3, 4
    CreateEmitter 0, 0, 3
    CallFunc 36, 5, 1, 0, 1, 4, 258
    CallFunc 34, 6, 2, 0, 1, 31, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, 51
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CallFunc 57, 4, 2, 14, 4, 258
    Delay 1
    CallFunc 57, 4, 2, -14, -4, 264
    WaitForAnimTasks
    CallFunc 57, 4, 2, -14, -4, 258
    CallFunc 57, 4, 4, 14, 4, 264
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
