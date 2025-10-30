#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, constrict_NCGR_lz
    LoadPlttRes 0, constrict_NCLR, 1
    LoadCellResObj 0, constrict_cell_NCER_lz
    LoadAnimResObj 0, constrict_anim_NANR_lz
    AddSpriteWithFunc 0, 5, constrict_NCGR_lz, constrict_NCLR, constrict_cell_NCER_lz, constrict_anim_NANR_lz, 0, 0
    BeginLoop 5
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W020
    EndLoop
    BeginLoop 2
    Delay 6
    PlaySoundEffectR SEQ_SE_DP_W030
    EndLoop
    WaitForAnimTasks
    FreeSpriteManager 0
    End
