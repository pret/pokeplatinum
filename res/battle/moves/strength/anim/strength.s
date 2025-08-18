#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 34
    CallFunc 5, 4, 70, 120, 10, 5
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    CallFunc 10, 3, 3, 10, 8
    CreateEmitter 0, 0, 4
    WaitForAnimTasks
    End
