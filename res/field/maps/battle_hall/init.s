#include "macros/scrcmd.inc"


    InitScriptEntry_OnLoad 21
    InitScriptEntry_OnTransition 16
    InitScriptEntry_OnResume 22
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 1, 4
    InitScriptGoToIfEqual VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 2, 2
    InitScriptGoToIfEqual VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 3, 5
    InitScriptGoToIfEqual VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0xFF, 3
    InitScriptFrameTableEnd

    InitScriptEnd
