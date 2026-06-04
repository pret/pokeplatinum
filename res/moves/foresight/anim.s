#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, foresight_NCGR_lz
    LoadPlttRes 0, foresight_NCLR, 1
    LoadCellResObj 0, foresight_cell_NCER_lz
    LoadAnimResObj 0, foresight_anim_NANR_lz
    AddSpriteWithFunc 0, 8, foresight_NCGR_lz, foresight_NCLR, foresight_cell_NCER_lz, foresight_anim_NANR_lz, 0, 0
    BeginLoop 6
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_100
    Delay 10
    EndLoop
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W043
    WaitForAnimTasks
    FreeSpriteManager 0
    End
