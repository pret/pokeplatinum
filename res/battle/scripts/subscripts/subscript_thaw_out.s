#include "macros/btlcmd.inc"


_000:
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_STATUS, MON_CONDITION_FREEZE
    // {0} thawed out!
    PrintMessage BattleStrings_Text_PokemonThawedOut_Ally, TAG_NICKNAME, BTLSCR_MSG_TEMP
    Wait 
    SetHealthbarStatus BTLSCR_MSG_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    End 
