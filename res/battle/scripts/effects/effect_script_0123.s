#include "macros/btlcmd.inc"


_000:
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_ATTACKER, BATTLEMON_FRIENDSHIP, BTLVAR_MOVE_POWER
    UpdateVar OPCODE_SUB, BTLVAR_MOVE_POWER, 255
    UpdateVar OPCODE_MUL, BTLVAR_MOVE_POWER, -10
    UpdateVar OPCODE_DIV, BTLVAR_MOVE_POWER, 25
    CalcCrit 
    CalcDamage 
    End 
