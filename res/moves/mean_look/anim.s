#include "macros/btlanimcmd.inc"

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_PURPLE
    WaitForAnimTasks
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, mean_look_NCGR_lz
    LoadPlttRes 0, mean_look_NCLR, 1
    LoadCellResObj 0, mean_look_cell_NCER_lz
    LoadAnimResObj 0, mean_look_anim_NANR_lz
    AddSpriteWithFunc 0, 11, mean_look_NCGR_lz, mean_look_NCLR, mean_look_cell_NCER_lz, mean_look_anim_NANR_lz, 0, 0
    BeginLoop 8
    PlaySoundEffectR SEQ_SE_DP_W060
    Delay 6
    EndLoop
    Delay 6
    PlaySoundEffectR SEQ_SE_DP_W109
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_PURPLE
    WaitForAnimTasks
    End
