#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_SET, BTLVAR_CALC_TEMP, 0x00005000
    UpdateVarFromVar OPCODE_FLAG_ON, BTLVAR_SIDE_CONDITIONS_ATTACKER, BTLVAR_CALC_TEMP
    // The Lucky Chant shielded your team from critical hits!
    PrintMessage pl_msg_00000368_01241, TAG_NONE_SIDE_CONSCIOUS, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
