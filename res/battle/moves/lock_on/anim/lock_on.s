#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 10
    LoadPlttRes 0, 10, 1
    LoadCellResObj 0, 10
    LoadAnimResObj 0, 10
    AddSpriteWithFunc 0, 9, 10, 10, 10, 10, 0, 0, 0
    Delay 16
    BeginLoop 4
    PlayPannedSoundEffect SEQ_SE_DP_GETTING, BATTLE_SOUND_PAN_RIGHT
    Delay 8
    EndLoop
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    FreeSpriteManager 0
    End
