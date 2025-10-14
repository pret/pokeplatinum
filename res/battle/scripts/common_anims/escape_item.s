#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 31
    LoadPlttRes 0, 31, 1
    LoadCellResObj 0, 31
    LoadAnimResObj 0, 31
    PlayPannedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT
    AddSpriteWithFunc 0, 28, 31, 31, 31, 31, 0, 0
    WaitForAnimTasks
    End
