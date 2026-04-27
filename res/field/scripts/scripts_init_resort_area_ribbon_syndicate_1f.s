#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 8
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_RESORT_AREA_RIBBON_SYNDICATE_1F_STATE, 0, 7
    InitScriptFrameTableEnd

    InitScriptEnd
