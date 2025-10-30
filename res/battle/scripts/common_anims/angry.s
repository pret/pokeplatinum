#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 7, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, 11
    LoadPlttRes 0, 11, 1
    LoadCellResObj 0, 11
    LoadAnimResObj 0, 11
    PlayLoopedSoundEffect SEQ_SE_DP_W207B, BATTLE_SOUND_PAN_RIGHT, 10, 2
    AddSpriteWithFunc 0, 10, 11, 11, 11, 11, 0, 0
    Delay 16
    WaitForAnimTasks
    FreeSpriteManager 0
    End
