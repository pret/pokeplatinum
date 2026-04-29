#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 12
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_BATTLE_FRONTIER_GATE_TO_FIGHT_AREA_STATE, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
