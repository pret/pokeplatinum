#include "macros/btlcmd.inc"


_000:
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_ATTACKER, BATTLEMON_STATUS, MON_CONDITION_FREEZE
    // {0} was defrosted by {1}!
    PrintMessage pl_msg_00000368_00117, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_ATTACKER
    Wait 
    SetHealthbarStatus BTLSCR_ATTACKER, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    End 
