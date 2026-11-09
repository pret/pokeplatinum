#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 7
    InitScriptEntry_OnResume 8
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 1, 9
    InitScriptGoToIfEqual VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 2, 10
    InitScriptFrameTableEnd

    InitScriptEnd
