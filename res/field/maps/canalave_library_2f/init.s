#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 5
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_ARCEUS_EVENT_STATE, 2, 6
    InitScriptFrameTableEnd

    InitScriptEnd
