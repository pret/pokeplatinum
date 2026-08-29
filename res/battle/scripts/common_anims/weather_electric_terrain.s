#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_YELLOW
    PlaySoundEffectC SEQ_SE_DP_KAMI
    WaitForAnimTasks
    Delay 20
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_YELLOW
    WaitForAnimTasks
    End
