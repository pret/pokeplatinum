#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 9
    LoadPlttRes 0, 9, 1
    LoadCellResObj 0, 9
    LoadAnimResObj 0, 9
    AddSpriteWithFunc 0, 8, 9, 9, 9, 9, 0, 0, 0
    BeginLoop 6
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_100, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    EndLoop
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W043, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    FreeSpriteManager 0
    End
