#include "macros/btlcmd.inc"


_000:
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_DEFENDER, BATTLEMON_HELD_ITEM, BTLVAR_SCRIPT_TEMP
    UpdateMonDataFromVar OPCODE_SET, BTLSCR_ATTACKER, BATTLEMON_HELD_ITEM, BTLVAR_SCRIPT_TEMP
    UpdateMonData OPCODE_SET, BTLSCR_DEFENDER, BATTLEMON_HELD_ITEM, ITEM_NONE
    End 
