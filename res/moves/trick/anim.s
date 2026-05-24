#include "macros/btlanimcmd.inc"

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    PlaySoundEffectL SEQ_SE_DP_166
    InitSpriteManager 0, 2, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, cup_NCGR_lz
    LoadPlttRes 0, cup_NCLR, 1
    LoadCellResObj 0, cup_cell_NCER_lz
    LoadAnimResObj 0, cup_anim_NANR_lz
    AddSpriteWithFunc 0, 3, cup_NCGR_lz, cup_NCLR, cup_cell_NCER_lz, cup_anim_NANR_lz, 0, 0, 2
    PlayDelayedSoundEffectC SEQ_SE_DP_W104, 55
    PlayDelayedSoundEffectC SEQ_SE_DP_W104, 70
    PlayDelayedSoundEffectC SEQ_SE_DP_W104, 83
    PlayDelayedSoundEffectC SEQ_SE_DP_W104, 97
    PlayDelayedSoundEffectC SEQ_SE_DP_W104, 105
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
