#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, 0
    PlayPannedSoundEffect SEQ_SE_DP_W060, 0
    WaitForAnimTasks
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, scary_face_NCGR_lz
    LoadPlttRes 0, scary_face_NCLR, 1
    LoadCellResObj 0, scary_face_cell_NCER_lz
    LoadAnimResObj 0, scary_face_anim_NANR_lz
    AddSpriteWithFunc 0, 7, scary_face_NCGR_lz, scary_face_NCLR, scary_face_cell_NCER_lz, scary_face_anim_NANR_lz, 0, 0, 0
    Delay 8
    PlayPannedSoundEffect SEQ_SE_DP_W043D, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
