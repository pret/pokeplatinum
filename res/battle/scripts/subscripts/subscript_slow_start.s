#include "macros/btlcmd.inc"


_000:
    // {0} can’t get it going because of its {1}!
    PrintMessage BattleStrings_Text_PokemonCantGetItGoingBecauseOfItsAbility_Ally, TAG_NICKNAME_ABILITY, BTLSCR_MSG_TEMP, BTLSCR_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
