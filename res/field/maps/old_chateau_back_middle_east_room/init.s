#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_OLD_CHATEAU_BACK_MIDDLE_EAST_ROOM_TWIN_STATE, 1, 2
    InitScriptFrameTableEnd

    InitScriptEnd
