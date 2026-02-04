#include "macros/btlcmd.inc"


_000:
    UpdateMonData OPCODE_FLAG_ON, BTLSCR_DEFENDER, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_FORESIGHT
    // {0} identified {1}!
    PrintMessage BattleStrings_Text_PokemonIdentifiedPokemon_AllyAlly, TAG_NICKNAME_NICKNAME, BTLSCR_ATTACKER, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
