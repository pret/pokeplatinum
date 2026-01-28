#include "macros/btlcmd.inc"


_000:
    // {0} won’t obey!
    PrintMessage BattleStrings_Text_PokemonWontObey, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    // It hurt itself in its confusion!
    PrintMessage BattleStrings_Text_ItHurtItselfInItsConfusion, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP
