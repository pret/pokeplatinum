#include "macros/btlcmd.inc"


_000:
    // {0} can’t escape!
    PrintMessage BattleStrings_Text_PokemonCantEscape, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
