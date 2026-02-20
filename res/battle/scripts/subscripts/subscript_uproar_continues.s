#include "macros/btlcmd.inc"


_000:
    // {0} is making an uproar!
    PrintMessage BattleStrings_Text_PokemonIsMakingAnUproar_Ally, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
