#include "macros/btlcmd.inc"


_000:
    // Your team’s {0} wore off!
    BufferLocalMessage BTLSCR_MSG_TEMP, BattleStrings_Text_YourTeamsMoveEffectWoreOff, TAG_MOVE, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
