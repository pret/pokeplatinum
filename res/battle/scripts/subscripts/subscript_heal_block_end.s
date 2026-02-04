#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_SET, BTLVAR_MSG_MOVE_TEMP, MOVE_HEAL_BLOCK
    // {0}’s {1} wore off!
    PrintMessage BattleStrings_Text_PokemonsMoveWoreOff_Ally, TAG_NICKNAME_MOVE, BTLSCR_MSG_TEMP, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BTLSCR_MSG_TEMP, BATTLEMON_MOVE_EFFECTS_MASK, MOVE_EFFECT_HEAL_BLOCK
    End 
