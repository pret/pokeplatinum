#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 7
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_SAFARI_GAME_STATE, 1, 3
    InitScriptGoToIfEqual VAR_SAFARI_GAME_STATE, 2, 4
    InitScriptFrameTableEnd

    InitScriptEnd
