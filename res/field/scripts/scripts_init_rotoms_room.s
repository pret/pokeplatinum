#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 7
    InitScriptEntry_OnResume 8
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_ROTOMS_ROOM_STATE, 1, 11
    InitScriptFrameTableEnd

    InitScriptEnd
