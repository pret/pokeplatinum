#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_RAINING_TEMP
    // The rain stopped.
    PrintMessage BattleStrings_Text_TheRainStopped, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
