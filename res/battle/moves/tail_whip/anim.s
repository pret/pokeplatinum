#include "macros/btlanimcmd.inc"

L_0:
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_112, BATTLE_SOUND_PAN_LEFT
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 12
    WaitForAnimTasks
    EndLoop
    End
