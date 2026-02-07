#include "macros/btlcmd.inc"


_000:
    // {0} can’t use the sealed {1}!
    PrintMessage BattleStrings_Text_PokemonCantUseTheSealedMove_Ally, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
