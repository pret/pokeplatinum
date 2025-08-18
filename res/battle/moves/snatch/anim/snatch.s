#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 4, -8, 4, 258
    WaitForAnimTasks
    CallFunc 57, 4, 4, -8, -4, 258
    WaitForAnimTasks
    CallFunc 57, 4, 4, 16, 0, 258
    WaitForAnimTasks
    End

L_2:
    CallFunc 71, 1, 2
    PlayPannedSoundEffect SEQ_SE_DP_W054, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_210, BATTLE_SOUND_PAN_RIGHT, 15
    PlayDelayedSoundEffect SEQ_SE_DP_W054, BATTLE_SOUND_PAN_LEFT, 30
    Delay 20
    CallFunc 36, 5, 1, 0, 1, 2, 264
    WaitForAnimTasks
    End
