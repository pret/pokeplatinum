#include "macros/btlcmd.inc"

    .data

_000:
    // {0} used one {1}!
    PrintMessage pl_msg_00000368_00857, TAG_TRNAME_ITEM, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    StartCatchMonTask CAPTURE_NORMAL
    WaitCatchMonTask 
    UpdateVarFromVar OPCODE_GET, BTLVAR_RESULT_MASK, BTLVAR_SCRIPT_TEMP
    UpdateVar OPCODE_BITWISE_AND, BTLVAR_SCRIPT_TEMP, 255
    CompareVarToValue OPCODE_NEQ, BTLVAR_SCRIPT_TEMP, 4, _029
    TryRestoreStatusOnSwitch BTLSCR_PLAYER, _029
    UpdateMonData OPCODE_SET, BTLSCR_PLAYER, BATTLEMON_STATUS, MON_CONDITION_NONE

_029:
    End 
