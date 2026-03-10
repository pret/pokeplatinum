#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 0, 2
    InitScriptFrameTableEnd

    InitScriptEnd
