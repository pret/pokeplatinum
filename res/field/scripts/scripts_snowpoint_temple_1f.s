#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_temple_1f.h"


    ScriptEntry SnowpointTemple1F_OnTransition
    ScriptEntry SnowpointTemple1F_Statue
    ScriptEntryEnd

SnowpointTemple1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_SNOWPOINT_TEMPLE
    End

SnowpointTemple1F_Statue:
    EventMessage SnowpointTemple1F_Text_StatueOfAPokemon
    End

SnowpointTemple1F_Unused:
    End
    
    .balign 4, 0
