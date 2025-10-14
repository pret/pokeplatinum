#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, lock_on_NCGR_lz
    LoadPlttRes 0, lock_on_NCLR, 1
    LoadCellResObj 0, lock_on_cell_NCER_lz
    LoadAnimResObj 0, lock_on_anim_NANR_lz
    AddSpriteWithFunc 0, 9, lock_on_NCGR_lz, lock_on_NCLR, lock_on_cell_NCER_lz, lock_on_anim_NANR_lz, 0, 0
    Delay 16
    BeginLoop 4
    PlaySoundEffectR SEQ_SE_DP_GETTING
    Delay 8
    EndLoop
    PlaySoundEffectR SEQ_SE_DP_081
    WaitForAnimTasks
    FreeSpriteManager 0
    End
