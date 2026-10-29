#include "macros/scrcmd.inc"


    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_RIVAL_HOUSE_STATE, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
