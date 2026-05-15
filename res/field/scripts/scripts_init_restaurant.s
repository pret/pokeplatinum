#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 2
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_RESTAURANT_STATE, 1, 3
    InitScriptFrameTableEnd

    InitScriptEnd
