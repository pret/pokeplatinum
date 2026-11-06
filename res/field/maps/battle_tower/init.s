#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 22
    InitScriptEntry_OnResume 23
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 1, 4
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 2, 5
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 3, 8
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0xFF, 6
    InitScriptFrameTableEnd

    InitScriptEnd
