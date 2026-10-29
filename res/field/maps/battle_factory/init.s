#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 14
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_BATTLE_FACTORY_LOBBY_LOAD_ACTION, 1, 4
    InitScriptGoToIfEqual VAR_BATTLE_FACTORY_LOBBY_LOAD_ACTION, 2, 2
    InitScriptGoToIfEqual VAR_BATTLE_FACTORY_LOBBY_LOAD_ACTION, 3, 5
    InitScriptGoToIfEqual VAR_BATTLE_FACTORY_LOBBY_LOAD_ACTION, 0xFF, 3
    InitScriptFrameTableEnd

    InitScriptEnd
