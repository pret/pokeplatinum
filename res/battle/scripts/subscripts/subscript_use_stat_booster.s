#include "macros/btlcmd.inc"


_000:
    WaitButtonABTime 15
    PlaySound BTLSCR_ATTACKER, 1516
    // {0} {1} used one {2}!
    PrintMessage pl_msg_00000368_00858, TAG_TRCLASS_TRNAME_ITEM, BTLSCR_ATTACKER, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UseBagItem BTLSCR_ATTACKER
    // The {1} raised {0}’s {2}!
    PrintMessage pl_msg_00000368_00756, TAG_NICKNAME_ITEM_STAT, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
