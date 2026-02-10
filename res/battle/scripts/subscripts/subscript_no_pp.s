#include "macros/btlcmd.inc"


_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // But there was no PP left for the move!
    PrintMessage BattleStrings_Text_ButThereWasNoPPLeftForTheMove, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
