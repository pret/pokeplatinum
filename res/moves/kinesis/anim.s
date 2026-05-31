#include "macros/btlanimcmd.inc"

L_0:
    PlaySoundEffectL SEQ_SE_DP_W060
    InitSpriteManager 0, 3, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, kinesis_NCGR_lz
    LoadPlttRes 0, kinesis_NCLR, 1
    LoadCellResObj 0, kinesis_cell_NCER_lz
    LoadAnimResObj 0, kinesis_anim_NANR_lz
    AddSpriteWithFunc 0, 2, kinesis_NCGR_lz, kinesis_NCLR, kinesis_cell_NCER_lz, kinesis_anim_NANR_lz, 0, 0
    Delay 32
    PlaySoundEffectL SEQ_SE_DP_154
    PlayDelayedSoundEffectL SEQ_SE_DP_154, 20
    BeginLoop 3
    Delay 20
    EndLoop
    Delay 27
    PlaySoundEffectL SEQ_SE_DP_150
    Delay 13
    WaitForAnimTasks
    FreeSpriteManager 0
    End
