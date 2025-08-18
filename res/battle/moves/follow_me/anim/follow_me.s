#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 1, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, 21
    LoadPlttRes 0, 20, 1
    LoadCellResObj 0, 21
    LoadAnimResObj 0, 21
    PlayDelayedSoundEffect SEQ_SE_DP_W213, BATTLE_SOUND_PAN_RIGHT, 2
    AddSpriteWithFunc 0, 26, 21, 20, 21, 21, 0, 0, 3, 0, 24, 0
    Delay 30
    PlayDelayedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT, 14
    PlayDelayedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT, 24
    PlayDelayedSoundEffect SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT, 34
    WaitForAnimTasks
    FreeSpriteManager 0
    End
    End
