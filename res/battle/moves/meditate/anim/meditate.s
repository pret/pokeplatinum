#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    CallFunc 14, 0
    PlayDelayedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT, 10
    WaitForAnimTasks
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
