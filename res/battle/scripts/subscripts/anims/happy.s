#include "macros/btlanimcmd.inc"

.data

L_0:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_001, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler 264, 0, 8, 4
    Delay 4
    Func_MoveBattler 264, 0, -8, 4
    Delay 4
    EndLoop
    End
