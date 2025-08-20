#include "macros/btlanimcmd.inc"

.data

L_0:
    PlayPannedSoundEffect SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_W207D, BATTLE_SOUND_PAN_LEFT, 20
    Func_BulkUp 0
    WaitForAnimTasks
    End
