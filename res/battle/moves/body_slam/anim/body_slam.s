#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 64
    CallFunc 57, 4, 4, 0, 16, 258
    WaitForAnimTasks
    CallFunc 57, 4, 4, 0, -16, 258
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 6
    CallFunc 57, 4, 4, 24, 0, 258
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CallFunc 36, 5, 3, 0, 1, 4, 264
    CallFunc 57, 4, 4, -24, 0, 258
    WaitForAnimTasks
    End
