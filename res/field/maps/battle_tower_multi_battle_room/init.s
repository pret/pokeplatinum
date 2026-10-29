#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnResume 2
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 1, 3
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 2, 4
    InitScriptFrameTableEnd

    InitScriptEnd
