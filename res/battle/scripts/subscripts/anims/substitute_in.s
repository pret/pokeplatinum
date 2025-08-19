#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    CallFunc 42, 8, 258, 100, 10, 100, 80, 100, 1, 327685
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_LEFT
    Delay 4
    CallFunc 40, 2, 2, 1
    WaitForAnimTasks
    BtlAnimCmd_068 2
    CallFunc 40, 2, 2, 1
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 4, 0, -160, 258
    WaitForAnimTasks
    CallFunc 40, 2, 2, 0
    WaitForAnimTasks
    CallFunc 57, 4, 8, 0, 160, 258
    WaitForAnimTasks
    CallFunc 57, 4, 4, 0, -32, 258
    WaitForAnimTasks
    CallFunc 57, 4, 4, 0, 32, 258
    WaitForAnimTasks
    End

L_2:
    CallFunc 42, 8, 258, 100, 10, 100, 80, 100, 1, 327685
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_LEFT
    Delay 4
    CallFunc 40, 2, 2, 1
    WaitForAnimTasks
    BtlAnimCmd_068 2
    CallFunc 40, 2, 2, 1
    Delay 1
    PlayPannedSoundEffect SEQ_SE_DP_080, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 4, 0, 80, 258
    WaitForAnimTasks
    CallFunc 40, 2, 2, 0
    WaitForAnimTasks
    CallFunc 57, 4, 8, 0, -80, 258
    WaitForAnimTasks
    CallFunc 57, 4, 4, 0, 24, 258
    WaitForAnimTasks
    CallFunc 57, 4, 4, 0, -24, 258
    WaitForAnimTasks
    End
    End
