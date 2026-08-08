#include "macros/btlanimcmd.inc"

L_0:
    PlaySoundEffectL SEQ_SE_DP_W207_sseq
    PlayDelayedSoundEffectL SEQ_SE_DP_W207D_sseq, 20
    Func_BulkUp 0
    WaitForAnimTasks
    End
