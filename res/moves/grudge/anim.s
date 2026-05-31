#include "macros/btlanimcmd.inc"

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    PlaySoundEffectL SEQ_SE_DP_W060
    WaitForAnimTasks
    InitSpriteManager 0, 10, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, grudge_NCGR_lz
    LoadPlttRes 0, grudge_NCLR, 1
    LoadCellResObj 0, grudge_cell_NCER_lz
    LoadAnimResObj 0, grudge_anim_NANR_lz
    PlayLoopedSoundEffectL SEQ_SE_DP_W052, 16, 3
    AddSpriteWithFunc 0, 15, grudge_NCGR_lz, grudge_NCLR, grudge_cell_NCER_lz, grudge_anim_NANR_lz, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_DARK_PURPLE, 14, 0
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
