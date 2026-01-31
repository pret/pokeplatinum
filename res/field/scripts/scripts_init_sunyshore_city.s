#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 19
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_SUNYSHORE_STATE, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
