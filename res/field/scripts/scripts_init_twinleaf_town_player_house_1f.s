#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_PLAYER_HOUSE_STATE, 0, 2
    InitScriptGoToIfEqual VAR_PLAYER_HOUSE_POSTGAME_STATE, 1, 11
    InitScriptGoToIfEqual VAR_PLAYER_HOUSE_STATE, 3, 3
    InitScriptFrameTableEnd

    InitScriptEnd
