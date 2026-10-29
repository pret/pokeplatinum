#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnLoad 2
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_STARK_MOUNTAIN_ROOM_3_STATE, 0, 5
    InitScriptFrameTableEnd

    InitScriptEnd
