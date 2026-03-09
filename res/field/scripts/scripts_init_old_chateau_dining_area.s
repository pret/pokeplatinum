#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_OLD_CHATEAU_DINING_AREA_OLD_MAN_STATE, 1, 2
    InitScriptFrameTableEnd

    InitScriptEnd
