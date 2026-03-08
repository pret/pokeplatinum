#include "macros/scrcmd.inc"


    InitScriptEntry_OnLoad 2
    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnResume 7
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_VALLEY_WINDWORKS_LOOKER_STATE, 1, 8
    InitScriptFrameTableEnd

    InitScriptEnd
