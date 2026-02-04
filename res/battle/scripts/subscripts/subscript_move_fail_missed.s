#include "macros/btlcmd.inc"


_000:
    // {0} avoided the attack!
    PrintMessage BattleStrings_Text_PokemonAvoidedTheAttack_Ally, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 
