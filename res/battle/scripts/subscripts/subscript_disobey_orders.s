#include "macros/btlcmd.inc"


_000:
    WaitButtonABTime 15
    // {0} ignored orders!
    PrintMessage BattleStrings_Text_PokemonIgnoredOrders, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
