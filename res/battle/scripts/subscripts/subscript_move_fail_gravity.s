#include "macros/btlcmd.inc"


_000:
    // {0} can’t use {1} because of gravity!
    PrintMessage BattleStrings_Text_PokemonCantUseMoveBecauseOfGravity_Ally, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
