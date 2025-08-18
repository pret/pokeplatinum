#include "macros/btlanimcmd.inc"

.data

L_0:
    PlayLoopedSoundEffect SEQ_SE_DP_W070, 0, 2, 8
    CallFunc 28, 1, 1
    WaitForAnimTasks
    End
