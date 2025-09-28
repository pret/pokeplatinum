#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, 31764
    WaitForAnimTasks
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, mean_look_NCGR_lz
    LoadPlttRes 0, mean_look_NCLR, 1
    LoadCellResObj 0, mean_look_cell_NCER_lz
    LoadAnimResObj 0, mean_look_anim_NANR_lz
    AddSpriteWithFunc 0, 11, mean_look_NCGR_lz, mean_look_NCLR, mean_look_cell_NCER_lz, mean_look_anim_NANR_lz, 0, 0, 0
    BeginLoop 8
    PlayPannedSoundEffect SEQ_SE_DP_W060, BATTLE_SOUND_PAN_RIGHT
    Delay 6
    EndLoop
    Delay 6
    PlayPannedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg 0, 1, 12, 0, 31764
    WaitForAnimTasks
    End
