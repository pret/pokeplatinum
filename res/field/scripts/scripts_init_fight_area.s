#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 15
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_FIGHT_AREA_STATE, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
