#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 13, 0
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    End
