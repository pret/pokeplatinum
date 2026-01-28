#include "macros/btlcmd.inc"


_000:
    Call BATTLE_SUBSCRIPT_INFATUATED
    // {0} is immobilized by love!
    PrintMessage BattleStrings_Text_PokemonIsImmobilizedByLove, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
