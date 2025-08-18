#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 12, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 25
    LoadPlttRes 0, 24, 1
    LoadCellResObj 0, 25
    LoadAnimResObj 0, 25
    AddSpriteWithFunc 0, 21, 25, 24, 25, 25, 0, 0, 1, 12
    PlayLoopedSoundEffect SEQ_SE_DP_W010, 0, 10, 4
    WaitForAnimTasks
    FreeSpriteManager 0
    End
