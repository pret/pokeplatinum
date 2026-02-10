#include "macros/btlcmd.inc"


_000:
    // {0} unleashed energy!
    PrintMessage BattleStrings_Text_PokemonUnleashedEnergy_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_ATTACKER, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_MOVE_LOCKED
    // But there was no target...
    PrintMessage BattleStrings_Text_ButThereWasNoTarget, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
