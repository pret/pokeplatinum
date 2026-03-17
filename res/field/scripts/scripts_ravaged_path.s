#include "macros/scrcmd.inc"


    ScriptEntry RavagedPath_OnTransition
    ScriptEntryEnd

RavagedPath_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_RAVAGED_PATH
    End

RavagedPath_Unused:
    End

    .balign 4, 0
