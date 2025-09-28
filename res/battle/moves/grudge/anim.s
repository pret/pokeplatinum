#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, 0
    PlayPannedSoundEffect SEQ_SE_DP_W060, BATTLE_SOUND_PAN_LEFT
    WaitForAnimTasks
    InitSpriteManager 0, 10, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, grudge_NCGR_lz
    LoadPlttRes 0, grudge_NCLR, 1
    LoadCellResObj 0, grudge_cell_NCER_lz
    LoadAnimResObj 0, grudge_anim_NANR_lz
    PlayLoopedSoundEffect SEQ_SE_DP_W052, BATTLE_SOUND_PAN_LEFT, 16, 3
    AddSpriteWithFunc 0, 15, grudge_NCGR_lz, grudge_NCLR, grudge_cell_NCER_lz, grudge_anim_NANR_lz, 0, 0, 0
    Func_FadeBattlerSprite 8, 0, 2, 8296, 14, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
