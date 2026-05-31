#include "macros/btlanimcmd.inc"

L_0:
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_112
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 12
    WaitForAnimTasks
    EndLoop
    End
