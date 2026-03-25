#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_VEILSTONE_CITY_COUNTERPART_NEEDS_HELP_STATE, 1, 29
    InitScriptFrameTableEnd

    InitScriptEnd
