#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_SANDSTORM_TEMP
    // The sandstorm subsided.
    PrintMessage BattleStrings_Text_TheSandstormSubsided, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
