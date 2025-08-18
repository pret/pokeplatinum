#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 6, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 23
    LoadPlttRes 0, 22, 1
    LoadCellResObj 0, 23
    LoadAnimResObj 0, 23
    AddSpriteWithFunc 0, 20, 23, 22, 23, 23, 0, 0, 1, 6
    PlayDelayedSoundEffect SEQ_SE_DP_W227, 0, 20
    Delay 14
    BeginLoop 2
    CallFunc 52, 3, 2, 12, 258
    CallFunc 36, 5, 1, 0, 1, 2, 260
    Delay 3
    CallFunc 52, 3, 2, -12, 258
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W227, 0
    EndLoop
    Delay 1
    CallFunc 52, 3, 2, 12, 258
    CallFunc 36, 5, 1, 0, 1, 2, 260
    Delay 3
    CallFunc 52, 3, 2, -12, 258
    Delay 1
    CallFunc 34, 5, 4, 0, 2, 1003, 8
    WaitForAnimTasks
    FreeSpriteManager 0
    End
