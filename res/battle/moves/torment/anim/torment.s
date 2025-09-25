#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 7, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, 19
    LoadPlttRes 0, 18, 1
    LoadCellResObj 0, 19
    LoadAnimResObj 0, 19
    AddSpriteWithFunc 0, 12, 19, 18, 19, 19, 0, 0, 0
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    Delay 16
    EndLoop
    BeginLoop 2
    Delay 4
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    Delay 4
    EndLoop
    BeginLoop 2
    Delay 4
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    EndLoop
    WaitForAnimTasks
    LoadCharResObj 0, 11
    LoadPlttRes 0, 11, 1
    LoadCellResObj 0, 11
    LoadAnimResObj 0, 11
    AddSpriteWithFunc 0, 10, 11, 11, 11, 11, 0, 0, 0
    Func_FadeBattlerSprite 8, 0, 1, 31, 14, 0
    Delay 4
    PlayLoopedSoundEffect SEQ_SE_DP_W207B, BATTLE_SOUND_PAN_RIGHT, 10, 2
    Delay 10
    WaitForAnimTasks
    FreeSpriteManager 0
    End
