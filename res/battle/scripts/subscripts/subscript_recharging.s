#include "macros/btlcmd.inc"


_000:
    // {0} must recharge!
    PrintMessage BattleStrings_Text_PokemonMustRecharge_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
