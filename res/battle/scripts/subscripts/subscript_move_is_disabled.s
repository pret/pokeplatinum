#include "macros/btlcmd.inc"


_000:
    CompareMonDataToValue OPCODE_FLAG_SET, BTLSCR_ATTACKER, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_MOVE_LOCKED, _005

_005:
    // {0}’s {1} is disabled!
    PrintMessage BattleStrings_Text_PokemonsMoveIsDisabled_Ally, TAG_NICKNAME_MOVE, BTLSCR_ATTACKER, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
