#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 5
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_PLAYER_HOUSE_SPECIAL_PROGRAM_STATE, 0, 3
    InitScriptFrameTableEnd

    InitScriptEnd
