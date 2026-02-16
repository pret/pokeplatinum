#include "macros/btlcmd.inc"


_000:
    // {0} is watching carefully!
    PrintGlobalMessage BattleStrings_Text_PokemonIsWatchingCarefully, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
