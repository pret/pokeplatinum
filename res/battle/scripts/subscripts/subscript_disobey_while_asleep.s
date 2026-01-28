#include "macros/btlcmd.inc"


_000:
    WaitButtonABTime 15
    // {0} ignored orders while asleep!
    PrintMessage BattleStrings_Text_PokemonIgnoredOrdersWhileAsleep, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
