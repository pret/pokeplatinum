#include "macros/btlanimcmd.inc"

.data

L_0:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_RIGHT
    CallFunc 4, 6, 65535, 66445, 10, 2, 0, 32
    WaitForAnimTasks
    EndLoop
    End
