#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 7
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_TEAM_GALACTIC_ETERNA_BUILDING_1F_STATE, 0, 5
    InitScriptFrameTableEnd

    InitScriptEnd
