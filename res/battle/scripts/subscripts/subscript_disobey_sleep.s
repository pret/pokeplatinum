#include "macros/btlcmd.inc"


_000:
    WaitButtonABTime 15
    // {0} began to nap!
    PrintMessage BattleStrings_Text_PokemonBeganToNap, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateVarFromVar OPCODE_SET, BTLVAR_SIDE_EFFECT_MON, BTLVAR_ATTACKER
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DISOBEDIENCE
    Call BATTLE_SUBSCRIPT_FALL_ASLEEP
    End 
