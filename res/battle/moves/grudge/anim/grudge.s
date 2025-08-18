#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 33, 5, 0, 1, 0, 12, 0
    PlayPannedSoundEffect SEQ_SE_DP_W060, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    InitSpriteManager 0, 10, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 28
    LoadPlttRes 0, 27, 1
    LoadCellResObj 0, 28
    LoadAnimResObj 0, 28
    PlayLoopedSoundEffect SEQ_SE_DP_W052, BATTLE_SOUND_PAN_LEFT, 16, 3
    AddSpriteWithFunc 0, 15, 28, 27, 28, 28, 0, 0, 0
    CallFunc 34, 6, 8, 0, 2, 8296, 14, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    CallFunc 33, 5, 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
