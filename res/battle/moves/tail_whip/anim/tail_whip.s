#include "macros/btlanimcmd.inc"

.data

L_0:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_112, BATTLE_SOUND_PAN_LEFT
    CallFunc 60, 3, 2, 1, 12
    WaitForAnimTasks
    EndLoop
    End
