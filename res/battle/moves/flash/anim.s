#include "macros/btlanimcmd.inc"

.data

L_0:
    PlayPannedSoundEffect SEQ_SE_DP_W043, 0
    CallFunc 16, 0
    WaitForAnimTasks
    End
