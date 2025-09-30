#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, BATTLE_COLOR_BLACK
    PlayPannedSoundEffect SEQ_SE_DP_166, BATTLE_SOUND_PAN_LEFT
    InitSpriteManager 0, 2, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, cup_NCGR_lz
    LoadPlttRes 0, switcheroo_NCLR, 1
    LoadCellResObj 0, cup_cell_NCER_lz
    LoadAnimResObj 0, cup_anim_NANR_lz
    AddSpriteWithFunc 0, 3, cup_NCGR_lz, switcheroo_NCLR, cup_cell_NCER_lz, cup_anim_NANR_lz, 0, 0, 1, 2
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 55
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 70
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 83
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 97
    PlayDelayedSoundEffect SEQ_SE_DP_W104, 0, 105
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg 0, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
