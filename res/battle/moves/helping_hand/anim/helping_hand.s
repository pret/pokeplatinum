#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 6, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, helping_hand_NCGR_lz
    LoadPlttRes 0, helping_hand_NCLR, 1
    LoadCellResObj 0, helping_hand_cell_NCER_lz
    LoadAnimResObj 0, helping_hand_anim_NANR_lz
    AddSpriteWithFunc 0, 20, helping_hand_NCGR_lz, helping_hand_NCLR, helping_hand_cell_NCER_lz, helping_hand_anim_NANR_lz, 0, 0, 1, 6
    PlayDelayedSoundEffect SEQ_SE_DP_W227, 0, 20
    Delay 14
    BeginLoop 2
    Func_MoveBattlerX2 2, 12, 258
    Func_Shake 1, 0, 1, 2, 260
    Delay 3
    Func_MoveBattlerX2 2, -12, 258
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W227, 0
    EndLoop
    Delay 1
    Func_MoveBattlerX2 2, 12, 258
    Func_Shake 1, 0, 1, 2, 260
    Delay 3
    Func_MoveBattlerX2 2, -12, 258
    Delay 1
    Func_FadeBattlerSprite 4, 0, 2, 1003, 8
    WaitForAnimTasks
    FreeSpriteManager 0
    End
