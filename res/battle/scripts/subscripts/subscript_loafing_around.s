#include "macros/btlcmd.inc"


_000:
    // {0} is loafing around!
    PrintMessage BattleStrings_Text_PokemonIsLoafingAroundTruant, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
