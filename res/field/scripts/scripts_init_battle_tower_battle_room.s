#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnResume 5
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 1, 2
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 2, 3
    InitScriptFrameTableEnd

    InitScriptEnd
