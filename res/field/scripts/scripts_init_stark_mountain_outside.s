#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_STARK_MOUNTAIN_OUTSIDE_STATE, 2, 4
    InitScriptFrameTableEnd

    InitScriptEnd
