#include "macros/btlanimcmd.inc"

.data

L_0:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_RIGHT
    Func_RotateMon DEG_TO_IDX(360), DEG_TO_IDX(365), 10, 2, 0, 32
    WaitForAnimTasks
    EndLoop
    End
