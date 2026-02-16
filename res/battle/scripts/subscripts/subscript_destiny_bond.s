#include "macros/btlcmd.inc"


_000:
    // {0} is trying to take its foe with it!
    PrintMessage BattleStrings_Text_PokemonIsTryingToTakeItsFoeWithIt_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_ON, BTLSCR_ATTACKER, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_DESTINY_BOND
    End 
