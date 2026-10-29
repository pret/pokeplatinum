#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_STARK_MOUNTAIN_ROOM_1_STATE, 0, 2
    InitScriptFrameTableEnd

    InitScriptEnd
