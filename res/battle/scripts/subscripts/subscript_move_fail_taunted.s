#include "macros/btlcmd.inc"


_000:
    // {0} can’t use {1} after the taunt!
    PrintMessage BattleStrings_Text_PokemonCantUseMoveAfterTheTaunt_Ally, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
