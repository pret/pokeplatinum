#include "macros/btlanimcmd.inc"

L_0:
    PlaySoundEffectL SEQ_SE_DP_W207
    PlayDelayedSoundEffectL SEQ_SE_DP_W207D, 20
    Func_BulkUp 0
    WaitForAnimTasks
    End
