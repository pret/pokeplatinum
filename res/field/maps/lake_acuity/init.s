#include "macros/scrcmd.inc"


    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_LAKE_ACUITY_STATE, 1, 1
    InitScriptFrameTableEnd

    InitScriptEnd
