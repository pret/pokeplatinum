#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40C6, 0, 10
    InitScriptGoToIfEqual VAR_PAL_PARK_STATE, 1, 3
    InitScriptGoToIfEqual VAR_PAL_PARK_STATE, 2, 12
    InitScriptFrameTableEnd

    InitScriptEnd
