#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 11
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_ETERNA_FOREST_CHERYL_OLD_CHATEAU_CUTSCENE_STATE, 1, 12
    InitScriptFrameTableEnd

    InitScriptEnd
