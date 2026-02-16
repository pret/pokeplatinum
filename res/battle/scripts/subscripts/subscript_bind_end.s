#include "macros/btlcmd.inc"


_000:
    // {0} was freed from {1}!
    PrintMessage BattleStrings_Text_PokemonWasFreedFromMove_Ally, TAG_NICKNAME_MOVE, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
