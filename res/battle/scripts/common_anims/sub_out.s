#include "macros/btlanimcmd.inc"

.data

L_0:
    Func_MoveBattlerOnOrOffScreen MOVE_BATTLER_OFF_SCREEN, BATTLE_ANIM_ATTACKER, 10, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT
    Delay 1
    Func_HideBattler BATTLE_ANIM_ATTACKER, 0
    WaitForAnimTasks
    End
