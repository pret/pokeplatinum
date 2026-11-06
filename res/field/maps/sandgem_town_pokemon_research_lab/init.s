#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_SANDGEM_TOWN_LAB_STATE, 0, 2
    InitScriptGoToIfEqual VAR_SANDGEM_TOWN_LAB_STATE, 2, 15
    InitScriptFrameTableEnd

    InitScriptEnd
