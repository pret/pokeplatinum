#include "macros/btlanimcmd.inc"

.data

L_0:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_001, BATTLE_SOUND_PAN_RIGHT
    CallFunc 57, 4, 4, 0, 8, 264
    Delay 4
    CallFunc 57, 4, 4, 0, -8, 264
    Delay 4
    EndLoop
    End
