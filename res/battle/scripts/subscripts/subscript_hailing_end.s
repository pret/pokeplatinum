#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_HAILING_TEMP
    // The hail stopped.
    PrintMessage BattleStrings_Text_TheHailStopped, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
