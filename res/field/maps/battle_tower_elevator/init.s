#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 1, 2
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 2, 3
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 3, 4
    InitScriptFrameTableEnd

    InitScriptEnd
