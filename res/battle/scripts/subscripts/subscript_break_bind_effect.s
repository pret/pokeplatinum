#include "macros/btlcmd.inc"


_000:
    // {0} got free of {1}’s {2}!
    PrintMessage BattleStrings_Text_PokemonGotFreeOfPokemonsMove_AllyAlly, TAG_NICKNAME_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
