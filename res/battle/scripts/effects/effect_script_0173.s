#include "macros/btlcmd.inc"


_000:
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BTLSCR_ATTACKER
    Wait 
    GetTerrainMove 
    // {0} turned into {1}!
    PrintMessage BattleStrings_Text_MoveTurnedIntoMove, TAG_MOVE_MOVE, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GoToMoveScript FALSE
