#include "macros/btlcmd.inc"

    .data

_000:
    PlaySound BTLSCR_ATTACKER, 1791
    // The wild {0} fled!
    PrintGlobalMessage pl_msg_00000368_00784, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BTLVAR_RESULT_MASK, BATTLE_RESULT_PLAYER_FLED
    IncrementGameRecord BTLSCR_ATTACKER, BATTLER_TYPE_SOLO_ENEMY, RECORD_WILD_MON_FLED
    End 
