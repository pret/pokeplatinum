#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    PlayPannedSoundEffect SEQ_SE_DP_W060, 0
    WaitForAnimTasks
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 8
    LoadPlttRes 0, 8, 1
    LoadCellResObj 0, 8
    LoadAnimResObj 0, 8
    AddSpriteWithFunc 0, 7, 8, 8, 8, 8, 0, 0, 0
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W043D, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
