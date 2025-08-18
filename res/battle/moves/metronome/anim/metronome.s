#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 3
    LoadPlttRes 0, 3, 1
    LoadCellResObj 0, 3
    LoadAnimResObj 0, 3
    PlayPannedSoundEffect SEQ_SE_DP_W118, BATTLE_SOUND_PAN_LEFT
    AddSpriteWithFunc 0, 4, 3, 3, 3, 3, 0, 0, 0
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_LEFT, 8, 3
    WaitForAnimTasks
    Delay 8
    FreeSpriteManager 0
    End
