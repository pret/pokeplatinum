#include "macros/btlcmd.inc"


_000:
    // But it failed!
    PrintMessage BattleStrings_Text_ButItFailed, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 
