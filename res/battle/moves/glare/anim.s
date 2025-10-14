#include "macros/btlanimcmd.inc"

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, glare_NCGR_lz
    LoadPlttRes 0, glare_NCLR, 1
    LoadCellResObj 0, glare_cell_NCER_lz
    LoadAnimResObj 0, glare_anim_NANR_lz
    AddSpriteWithFunc 0, 7, glare_NCGR_lz, glare_NCLR, glare_cell_NCER_lz, glare_anim_NANR_lz, 0, 0
    Delay 8
    PlaySoundEffectC SEQ_SE_DP_W043D
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
