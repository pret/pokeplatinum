#include "macros/btlcmd.inc"


_000:
    // {0} calmed down.
    PrintMessage BattleStrings_Text_PokemonCalmedDown_Ally, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
