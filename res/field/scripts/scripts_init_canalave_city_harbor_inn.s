#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_DARKRAI_EVENT_STATE, 1, 2
    InitScriptGoToIfEqual VAR_DARKRAI_EVENT_STATE, 2, 3
    InitScriptFrameTableEnd

    InitScriptEnd
