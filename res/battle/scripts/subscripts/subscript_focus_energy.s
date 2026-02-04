#include "macros/btlcmd.inc"


_000:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    UpdateMonData OPCODE_FLAG_ON, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_VOLATILE_STATUS, VOLATILE_CONDITION_FOCUS_ENERGY
    // {0} is getting pumped!
    PrintMessage BattleStrings_Text_PokemonIsGettingPumped_Ally, TAG_NICKNAME, BTLSCR_SIDE_EFFECT_MON
    Wait 
    WaitButtonABTime 30
    End 
