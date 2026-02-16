#include "macros/btlcmd.inc"


_000:
    ResetAllStatChanges 
    // All stat changes were eliminated!
    PrintMessage BattleStrings_Text_AllStatChangesWereEliminated, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
