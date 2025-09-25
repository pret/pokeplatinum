#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 11
    LoadPlttRes 0, 11, 1
    LoadCellResObj 0, 11
    LoadAnimResObj 0, 11
    CallFunc 31, 0
    PlayPannedSoundEffect SEQ_SE_DP_W207D, BATTLE_SOUND_PAN_LEFT
    Delay 30
    WaitForAnimTasks
    AddSpriteWithFunc 0, 10, 11, 11, 11, 11, 0, 0, 0
    Func_FadeBattlerSprite 8, 0, 1, 31, 14, 0
    PlayPannedSoundEffect SEQ_SE_DP_W207B, BATTLE_SOUND_PAN_RIGHT
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W207B, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    FreeSpriteManager 0
    End
