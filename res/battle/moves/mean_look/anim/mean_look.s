#include "macros/btlanimcmd.inc"

.data

L_0:
    CallFunc 33, 5, 0, 1, 0, 12, 31764
    WaitForAnimTasks
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 12
    LoadPlttRes 0, 12, 1
    LoadCellResObj 0, 12
    LoadAnimResObj 0, 12
    AddSpriteWithFunc 0, 11, 12, 12, 12, 12, 0, 0, 0
    BeginLoop 8
    PlayPannedSoundEffect SEQ_SE_DP_W060, BATTLE_SOUND_PAN_RIGHT
    Delay 6
    EndLoop
    Delay 6
    PlayPannedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    FreeSpriteManager 0
    CallFunc 33, 5, 0, 1, 12, 0, 31764
    WaitForAnimTasks
    End
