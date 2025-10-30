#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 1, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, metronome_NCGR_lz
    LoadPlttRes 0, metronome_NCLR, 1
    LoadCellResObj 0, metronome_cell_NCER_lz
    LoadAnimResObj 0, metronome_anim_NANR_lz
    PlaySoundEffectL SEQ_SE_DP_W118
    AddSpriteWithFunc 0, 4, metronome_NCGR_lz, metronome_NCLR, metronome_cell_NCER_lz, metronome_anim_NANR_lz, 0, 0
    Delay 10
    PlayLoopedSoundEffectL SEQ_SE_DP_W039, 8, 3
    WaitForAnimTasks
    Delay 8
    FreeSpriteManager 0
    End
