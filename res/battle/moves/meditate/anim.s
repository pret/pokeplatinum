#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    Func_Meditate
    PlayDelayedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT, 10
    WaitForAnimTasks
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
