#include "macros/btlanimcmd.inc"

.data

L_0:
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, constrict_NCGR_lz
    LoadPlttRes 0, constrict_NCLR, 1
    LoadCellResObj 0, constrict_cell_NCER_lz
    LoadAnimResObj 0, constrict_anim_NANR_lz
    AddSpriteWithFunc 0, 5, constrict_NCGR_lz, constrict_NCLR, constrict_cell_NCER_lz, constrict_anim_NANR_lz, 0, 0, 0
    BeginLoop 5
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W020, BATTLE_SOUND_PAN_RIGHT
    EndLoop
    BeginLoop 2
    Delay 6
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    EndLoop
    WaitForAnimTasks
    FreeSpriteManager 0
    End
