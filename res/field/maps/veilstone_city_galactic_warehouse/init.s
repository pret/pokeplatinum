#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 4
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_VEILSTONE_CITY_GALACTIC_WAREHOUSE_STATE, 1, 2
    InitScriptFrameTableEnd

    InitScriptEnd
