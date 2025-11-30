#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 12, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, assist_NCGR_lz
    LoadPlttRes 0, assist_NCLR, 1
    LoadCellResObj 0, assist_cell_NCER_lz
    LoadAnimResObj 0, assist_anim_NANR_lz
    AddSpriteWithFunc 0, 21, assist_NCGR_lz, assist_NCLR, assist_cell_NCER_lz, assist_anim_NANR_lz, 0, 0, 12
    PlayLoopedSoundEffectC SEQ_SE_DP_W010, 10, 4
    WaitForAnimTasks
    FreeSpriteManager 0
    End
