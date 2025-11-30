#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 1, 2, 2, 2, 2, 0, 0
    LoadCharResObj 0, follow_me_NCGR_lz
    LoadPlttRes 0, follow_me_NCLR, 1
    LoadCellResObj 0, follow_me_cell_NCER_lz
    LoadAnimResObj 0, follow_me_anim_NANR_lz
    PlayDelayedSoundEffectR SEQ_SE_DP_W213, 2
    AddSpriteWithFunc 0, 26, follow_me_NCGR_lz, follow_me_NCLR, follow_me_cell_NCER_lz, follow_me_anim_NANR_lz, 0, 0, 0, 24, 0
    Delay 30
    PlayDelayedSoundEffectR SEQ_SE_DP_W039, 14
    PlayDelayedSoundEffectR SEQ_SE_DP_W039, 24
    PlayDelayedSoundEffectR SEQ_SE_DP_W039, 34
    WaitForAnimTasks
    FreeSpriteManager 0
    End
    End
