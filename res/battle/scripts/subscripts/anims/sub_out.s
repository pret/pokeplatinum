#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 77, 5, 0, 2, 10, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT
    Delay 1
    CallFunc 40, 2, 2, 0
    WaitForAnimTasks
    End
