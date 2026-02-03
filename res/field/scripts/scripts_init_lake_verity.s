#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnLoad 2
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_LAKE_VERITY_PROF_ROWAN_STATE, 0, 5
    InitScriptFrameTableEnd

    InitScriptEnd
