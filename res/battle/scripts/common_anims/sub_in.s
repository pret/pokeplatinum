#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_MoveBattlerOnOrOffScreen 1, 2, 10, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT
    Delay 1
    Func_HideBattler 2, 0
    WaitForAnimTasks
    End
