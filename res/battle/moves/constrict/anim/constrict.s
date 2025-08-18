#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 4
    LoadPlttRes 0, 4, 1
    LoadCellResObj 0, 4
    LoadAnimResObj 0, 4
    AddSpriteWithFunc 0, 5, 4, 4, 4, 4, 0, 0, 0
    BeginLoop 5
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W020, BATTLE_SOUND_PAN_RIGHT
    EndLoop
    BeginLoop 2
    Delay 6
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    EndLoop
    WaitForAnimTasks
    FreeSpriteManager 0
    End
