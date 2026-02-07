#include "macros/btlcmd.inc"


_000:
    // {0}’s {1} alerted it to {2}!
    PrintMessage BattleStrings_Text_PokemonsAbilityAlertedItToMove_Ally, TAG_NICKNAME_ABILITY_MOVE, BTLSCR_MSG_TEMP, BTLSCR_MSG_BATTLER_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
