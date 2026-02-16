#include "macros/btlcmd.inc"


_000:
    // {0}’s rage is building!
    PrintMessage BattleStrings_Text_PokemonsRageIsBuilding_Ally, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
