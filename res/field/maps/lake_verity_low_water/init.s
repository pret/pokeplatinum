#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnLoad 2
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_VISITED_LAKE_VERITY_WITH_RIVAL, 0, 3
    InitScriptFrameTableEnd

    InitScriptEnd
