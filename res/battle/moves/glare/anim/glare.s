#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    WaitForAnimTasks
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 6
    LoadPlttRes 0, 6, 1
    LoadCellResObj 0, 6
    LoadAnimResObj 0, 6
    AddSpriteWithFunc 0, 7, 6, 6, 6, 6, 0, 0, 0
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W043D, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
