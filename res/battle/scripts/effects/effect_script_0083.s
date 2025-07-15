#include "macros/btlcmd.inc"


_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PlayMoveAnimation BTLSCR_ATTACKER
    Wait 
    Metronome 
    GoToMoveScript FALSE
