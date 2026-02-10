#include "macros/btlcmd.inc"


_000:
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_SUNNY_TEMP
    // The sunlight faded.
    PrintMessage BattleStrings_Text_TheSunlightFaded, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
