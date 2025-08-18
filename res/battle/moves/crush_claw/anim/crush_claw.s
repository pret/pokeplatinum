#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 17
    LoadPlttRes 0, 37, 1
    LoadCellResObj 0, 17
    LoadAnimResObj 0, 17
    AddSpriteWithFunc 0, 22, 17, 37, 17, 17, 0, 0, 1, 4
    Delay 1
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 3, 24, 258
    Delay 2
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 2
    CallFunc 52, 3, 3, -24, 258
    Delay 4
    EndLoop
    WaitForAnimTasks
    FreeSpriteManager 0
    End
