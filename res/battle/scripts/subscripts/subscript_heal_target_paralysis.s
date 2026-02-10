#include "macros/btlcmd.inc"


_000:
    CompareMonDataToValue OPCODE_EQU, BTLSCR_DEFENDER, BATTLEMON_CUR_HP, 0, _020
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_DEFENDER, BATTLEMON_STATUS, MON_CONDITION_PARALYSIS
    // {0} was healed of paralysis!
    PrintMessage BattleStrings_Text_PokemonWasHealedOfParalysis_Ally, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    SetHealthbarStatus BTLSCR_DEFENDER, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30

_020:
    End 
