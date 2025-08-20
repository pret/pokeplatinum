#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, 0
    PlayPannedSoundEffect SEQ_SE_DP_166, BATTLE_SOUND_PAN_LEFT
    InitSpriteManager 0, 2, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 24
    LoadPlttRes 0, 23, 1
    LoadCellResObj 0, 24
    LoadAnimResObj 0, 24
    AddSpriteWithFunc 0, 3, 24, 23, 24, 24, 0, 0, 1, 2
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 55
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 70
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 83
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 97
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 105
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
