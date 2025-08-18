#include "macros/btlanimcmd.inc"

.data

L_0:
    PlayPannedSoundEffect SEQ_SE_DP_W060, BATTLE_SOUND_PAN_LEFT
    InitSpriteManager 0, 3, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 5
    LoadPlttRes 0, 5, 1
    LoadCellResObj 0, 5
    LoadAnimResObj 0, 5
    AddSpriteWithFunc 0, 2, 5, 5, 5, 5, 0, 0, 0
    Delay 32
    PlayPannedSoundEffect SEQ_SE_DP_154, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_154, BATTLE_SOUND_PAN_LEFT, 20
    BeginLoop 3
    Delay 20
    EndLoop
    Delay 27
    PlayPannedSoundEffect SEQ_SE_DP_150, BATTLE_SOUND_PAN_LEFT
    Delay 13
    WaitForAnimTasks
    FreeSpriteManager 0
    End
