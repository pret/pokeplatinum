#include "macros/btlcmd.inc"


_000:
    // {0} blew away {1}!
    PrintMessage BattleStrings_Text_PokemonBlewAwayHazards_Ally, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
